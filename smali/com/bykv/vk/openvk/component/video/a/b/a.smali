###### Class com.bykv.vk.openvk.component.video.a.b.a (com.bykv.vk.openvk.component.video.a.b.a)
.class abstract Lcom/bykv/vk/openvk/component/video/a/b/a;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/a/b/k;


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected volatile a:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

.field protected final b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

.field protected final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Lcom/bykv/vk/openvk/component/video/a/b/d/a;

.field protected volatile f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/a/b/i$b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile g:Ljava/lang/String;

.field protected volatile h:Ljava/lang/String;

.field protected volatile i:Lcom/bykv/vk/openvk/component/video/a/b/i;

.field protected volatile j:Lcom/bykv/vk/openvk/component/video/a/b/l;

.field protected volatile k:Z

.field public final l:J

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/a/b/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/a/a;Lcom/bykv/vk/openvk/component/video/a/b/b/c;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->k:Z

    sget-object v1, Lcom/bykv/vk/openvk/component/video/a/b/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->l:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->o:I

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->a:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/b/a;)I
    .registers 1

    iget p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->o:I

    return p0
.end method


# virtual methods
.method protected a(Lcom/bykv/vk/openvk/component/video/a/b/l$a;IILjava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/e/a;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e/c;->a()Lcom/bykv/vk/openvk/component/video/a/b/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/e/c;->b()Lcom/bykv/vk/openvk/component/video/a/b/e/b;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/a/b/e/e;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p1, Lcom/bykv/vk/openvk/component/video/a/b/l$a;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->a:I

    const-string v4, "HEAD"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_24

    const/4 p4, 0x4

    iput p4, v1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->a:I

    :cond_24
    iget-object p4, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->f:Ljava/util/List;

    const-string v4, "Range"

    if-eqz p4, :cond_6f

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_34
    :goto_34
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;

    iget-object v6, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->a:Ljava/lang/String;

    const-string v7, "Connection"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->a:Ljava/lang/String;

    const-string v7, "Proxy-Connection"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->a:Ljava/lang/String;

    const-string v7, "Host"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    goto :goto_34

    :cond_67
    iget-object v6, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->b:Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_6f
    invoke-static {p2, p3}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_78

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    sget-boolean p2, Lcom/bykv/vk/openvk/component/video/a/b/e;->f:Z

    if-eqz p2, :cond_83

    const-string p2, "Cache-Control"

    const-string p3, "no-cache"

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object p2

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a()Lcom/bykv/vk/openvk/component/video/a/b/f;

    move-result-object p3

    iget-object p4, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->i:Lcom/bykv/vk/openvk/component/video/a/b/i;

    if-nez p4, :cond_91

    const/4 p4, 0x1

    goto :goto_92

    :cond_91
    const/4 p4, 0x0

    :goto_92
    if-eqz p4, :cond_99

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a()Lcom/bykv/vk/openvk/component/video/a/b/c;

    move-result-object v4

    goto :goto_9d

    :cond_99
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b()Lcom/bykv/vk/openvk/component/video/a/b/c;

    move-result-object v4

    :goto_9d
    if-eqz p4, :cond_a4

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/a/b/d;->b()Lcom/bykv/vk/openvk/component/video/a/b/c;

    move-result-object p2

    goto :goto_a8

    :cond_a4
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/a/b/f;->c()Lcom/bykv/vk/openvk/component/video/a/b/c;

    move-result-object p2

    :goto_a8
    if-nez v4, :cond_ac

    if-eqz p2, :cond_c0

    :cond_ac
    if-eqz v4, :cond_b6

    iget p3, p1, Lcom/bykv/vk/openvk/component/video/a/b/l$a;->b:I

    invoke-virtual {v4, p3}, Lcom/bykv/vk/openvk/component/video/a/b/c;->a(I)J

    move-result-wide p3

    iput-wide p3, v1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->c:J

    :cond_b6
    if-eqz p2, :cond_c0

    iget p1, p1, Lcom/bykv/vk/openvk/component/video/a/b/l$a;->b:I

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/component/video/a/b/c;->a(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->d:J

    :cond_c0
    iput-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->e:Ljava/util/Map;

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->k:Z

    if-eqz p1, :cond_ca

    iput-boolean v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->k:Z

    const/4 p1, 0x0

    return-object p1

    :cond_ca
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/e/b;->a(Lcom/bykv/vk/openvk/component/video/a/b/e/e;)Lcom/bykv/vk/openvk/component/video/a/b/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method protected a(II)V
    .registers 7

    if-lez p1, :cond_37

    if-gez p2, :cond_5

    goto :goto_37

    :cond_5
    sget v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->g:I

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->f()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, 0x2

    if-ne v0, v3, :cond_33

    if-ne v1, v2, :cond_33

    :cond_13
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    const/16 p2, 0x64

    if-le p1, p2, :cond_21

    const/16 p1, 0x64

    :cond_21
    monitor-enter p0

    :try_start_22
    iget p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->o:I

    if-gt p1, p2, :cond_28

    monitor-exit p0

    return-void

    :cond_28
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->o:I

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_34

    new-instance p1, Lcom/bykv/vk/openvk/component/video/a/b/a$1;

    invoke-direct {p1, p0}, Lcom/bykv/vk/openvk/component/video/a/b/a$1;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/a;)V

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/lang/Runnable;)V

    :cond_33
    return-void

    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1

    :cond_37
    :goto_37
    return-void
.end method

.method protected a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected c()V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method protected e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/c/a;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/c/a;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/a/b/c/a;-><init>()V

    throw v0
.end method

.method protected f()I
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->i:Lcom/bykv/vk/openvk/component/video/a/b/i;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->i:Lcom/bykv/vk/openvk/component/video/a/b/i;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/a/b/i;->c:Lcom/bykv/vk/openvk/component/video/a/b/i$a;

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/a/b/i$a;->a:I

    goto :goto_f

    :cond_b
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->a:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    instance-of v0, v0, Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    :goto_f
    return v0
.end method

.method protected g()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.a.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.b.a$1)
.class Lcom/bykv/vk/openvk/component/video/a/b/a$1;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/b/a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/a;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/a;

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/a;->e:Lcom/bykv/vk/openvk/component/video/a/b/d/a;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/a/b/a;->j:Lcom/bykv/vk/openvk/component/video/a/b/l;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/a;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a(Lcom/bykv/vk/openvk/component/video/a/b/a;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/bykv/vk/openvk/component/video/a/b/d/a;->a(Lcom/bykv/vk/openvk/component/video/a/b/l;I)V

    :cond_11
    return-void
.end method
