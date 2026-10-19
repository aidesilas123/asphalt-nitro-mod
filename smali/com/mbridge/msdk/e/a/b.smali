###### Class com.mbridge.msdk.e.a.b (com.mbridge.msdk.e.a.b)
.class public final Lcom/mbridge/msdk/e/a/b;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/mbridge/msdk/e/a/a;

.field private final d:Lcom/mbridge/msdk/e/a/q;

.field private volatile e:Z

.field private final f:Lcom/mbridge/msdk/e/a/w;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mbridge/msdk/e/a/a;Lcom/mbridge/msdk/e/a/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;>;",
            "Lcom/mbridge/msdk/e/a/a;",
            "Lcom/mbridge/msdk/e/a/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/e/a/b;->e:Z

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/b;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/b;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/mbridge/msdk/e/a/b;->c:Lcom/mbridge/msdk/e/a/a;

    iput-object p4, p0, Lcom/mbridge/msdk/e/a/b;->d:Lcom/mbridge/msdk/e/a/q;

    new-instance p1, Lcom/mbridge/msdk/e/a/w;

    invoke-direct {p1, p0, p2, p4}, Lcom/mbridge/msdk/e/a/w;-><init>(Lcom/mbridge/msdk/e/a/b;Ljava/util/concurrent/BlockingQueue;Lcom/mbridge/msdk/e/a/q;)V

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/b;->f:Lcom/mbridge/msdk/e/a/w;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/e/a/b;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/a/b;->b:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/e/a/b;->e:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 16

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/b;->c:Lcom/mbridge/msdk/e/a/a;

    invoke-interface {v0}, Lcom/mbridge/msdk/e/a/a;->a()V

    :goto_a
    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/mbridge/msdk/e/a/b;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/e/a/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/e/a/m;->a(I)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_17} :catch_f4

    const/4 v3, 0x2

    :try_start_18
    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->l()Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v2, "cache-discard-canceled"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/e/a/m;->a(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_ef

    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/e/a/m;->a(I)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_f4

    goto :goto_a

    :cond_27
    :try_start_27
    iget-object v4, p0, Lcom/mbridge/msdk/e/a/b;->c:Lcom/mbridge/msdk/e/a/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mbridge/msdk/e/a/a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/e/a/a$a;

    move-result-object v4

    if-nez v4, :cond_41

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->f:Lcom/mbridge/msdk/e/a/w;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/e/a/w;->b(Lcom/mbridge/msdk/e/a/m;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_23

    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/mbridge/msdk/e/a/a$a;->a(J)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/a$a;)Lcom/mbridge/msdk/e/a/m;

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->f:Lcom/mbridge/msdk/e/a/w;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/e/a/w;->b(Lcom/mbridge/msdk/e/a/m;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_23

    :cond_5c
    new-instance v14, Lcom/mbridge/msdk/e/a/k;

    const/16 v8, 0xc8

    iget-object v9, v4, Lcom/mbridge/msdk/e/a/a$a;->a:[B

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    iget-object v13, v4, Lcom/mbridge/msdk/e/a/a$a;->h:Ljava/util/List;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/mbridge/msdk/e/a/k;-><init>(I[BZJLjava/util/List;)V

    invoke-virtual {v1, v14}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/k;)Lcom/mbridge/msdk/e/a/o;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->j()Lcom/mbridge/msdk/e/a/p;

    move-result-object v8

    if-eqz v8, :cond_7e

    invoke-interface {v8, v7, v1}, Lcom/mbridge/msdk/e/a/p;->a(Lcom/mbridge/msdk/e/a/o;Lcom/mbridge/msdk/e/a/m;)Z

    move-result v8

    if-eqz v8, :cond_7c

    goto :goto_7e

    :cond_7c
    const/4 v8, 0x0

    goto :goto_7f

    :cond_7e
    :goto_7e
    const/4 v8, 0x1

    :goto_7f
    const/4 v9, 0x0

    if-nez v8, :cond_9c

    iget-object v4, p0, Lcom/mbridge/msdk/e/a/b;->c:Lcom/mbridge/msdk/e/a/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/mbridge/msdk/e/a/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/a$a;)Lcom/mbridge/msdk/e/a/m;

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->f:Lcom/mbridge/msdk/e/a/w;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/e/a/w;->b(Lcom/mbridge/msdk/e/a/m;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_23

    :cond_9c
    invoke-virtual {v7}, Lcom/mbridge/msdk/e/a/o;->a()Z

    move-result v8

    if-nez v8, :cond_bd

    iget-object v4, p0, Lcom/mbridge/msdk/e/a/b;->c:Lcom/mbridge/msdk/e/a/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/mbridge/msdk/e/a/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/a$a;)Lcom/mbridge/msdk/e/a/m;

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->f:Lcom/mbridge/msdk/e/a/w;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/e/a/w;->b(Lcom/mbridge/msdk/e/a/m;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_bd
    iget-wide v8, v4, Lcom/mbridge/msdk/e/a/a$a;->f:J

    cmp-long v10, v8, v5

    if-gez v10, :cond_c5

    const/4 v5, 0x1

    goto :goto_c6

    :cond_c5
    const/4 v5, 0x0

    :goto_c6
    if-nez v5, :cond_cf

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->d:Lcom/mbridge/msdk/e/a/q;

    invoke-interface {v2, v1, v7}, Lcom/mbridge/msdk/e/a/q;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;)V

    goto/16 :goto_23

    :cond_cf
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/a$a;)Lcom/mbridge/msdk/e/a/m;

    iput-boolean v2, v7, Lcom/mbridge/msdk/e/a/o;->d:Z

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->f:Lcom/mbridge/msdk/e/a/w;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/e/a/w;->b(Lcom/mbridge/msdk/e/a/m;)Z

    move-result v2

    if-nez v2, :cond_e8

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->d:Lcom/mbridge/msdk/e/a/q;

    new-instance v4, Lcom/mbridge/msdk/e/a/b$1;

    invoke-direct {v4, p0, v1}, Lcom/mbridge/msdk/e/a/b$1;-><init>(Lcom/mbridge/msdk/e/a/b;Lcom/mbridge/msdk/e/a/m;)V

    invoke-interface {v2, v1, v7, v4}, Lcom/mbridge/msdk/e/a/q;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;Ljava/lang/Runnable;)V

    goto/16 :goto_23

    :cond_e8
    iget-object v2, p0, Lcom/mbridge/msdk/e/a/b;->d:Lcom/mbridge/msdk/e/a/q;

    invoke-interface {v2, v1, v7}, Lcom/mbridge/msdk/e/a/q;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;)V
    :try_end_ed
    .catchall {:try_start_27 .. :try_end_ed} :catchall_ef

    goto/16 :goto_23

    :catchall_ef
    move-exception v2

    :try_start_f0
    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/e/a/m;->a(I)V

    throw v2
    :try_end_f4
    .catch Ljava/lang/InterruptedException; {:try_start_f0 .. :try_end_f4} :catch_f4

    :catch_f4
    nop

    iget-boolean v1, p0, Lcom/mbridge/msdk/e/a/b;->e:Z

    if-eqz v1, :cond_101

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_101
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/e/a/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a
.end method

###### Class com.mbridge.msdk.e.a.b.AnonymousClass1 (com.mbridge.msdk.e.a.b$1)
.class final Lcom/mbridge/msdk/e/a/b$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/e/a/m;

.field final synthetic b:Lcom/mbridge/msdk/e/a/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/e/a/b;Lcom/mbridge/msdk/e/a/m;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/b$1;->b:Lcom/mbridge/msdk/e/a/b;

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/b$1;->a:Lcom/mbridge/msdk/e/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/b$1;->b:Lcom/mbridge/msdk/e/a/b;

    invoke-static {v0}, Lcom/mbridge/msdk/e/a/b;->a(Lcom/mbridge/msdk/e/a/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/e/a/b$1;->a:Lcom/mbridge/msdk/e/a/m;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_13
    return-void
.end method
