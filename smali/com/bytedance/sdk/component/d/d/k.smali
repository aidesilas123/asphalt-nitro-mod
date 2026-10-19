###### Class com.bytedance.sdk.component.d.d.k (com.bytedance.sdk.component.d.d.k)
.class public Lcom/bytedance/sdk/component/d/d/k;
.super Lcom/bytedance/sdk/component/d/d/a;
.source "NetVisitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/d/a;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 6

    new-instance v0, Lcom/bytedance/sdk/component/d/d/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/d/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "net_request"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 11

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->s()Lcom/bytedance/sdk/component/d/c/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/c/f;->d()Lcom/bytedance/sdk/component/d/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/d/c/c;->a(Z)V

    :try_start_c
    new-instance v1, Lcom/bytedance/sdk/component/d/b/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->m()Z

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->n()Z

    move-result v5

    invoke-direct {v1, v2, v4, v5}, Lcom/bytedance/sdk/component/d/b/c;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/d;->a(Lcom/bytedance/sdk/component/d/e;)Lcom/bytedance/sdk/component/d/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/f;->b()I

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/f;->a()Lcom/bytedance/sdk/component/d/g;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/g;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/f;->b()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_6c

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/f;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [B

    new-instance v1, Lcom/bytedance/sdk/component/d/d/b;

    invoke-direct {v1, v6, v0}, Lcom/bytedance/sdk/component/d/d/b;-><init>([BLcom/bytedance/sdk/component/d/f;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->t()Lcom/bytedance/sdk/component/d/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/component/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->t()Lcom/bytedance/sdk/component/d/b;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/d/c/f;->b(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/r;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/bytedance/sdk/component/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5c
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/c/f;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/bytedance/sdk/component/d/d/k$1;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/d/d/k$1;-><init>(Lcom/bytedance/sdk/component/d/d/k;Lcom/bytedance/sdk/component/d/b;Lcom/bytedance/sdk/component/d/c/f;Lcom/bytedance/sdk/component/d/c/c;Ljava/lang/String;[B)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_93

    :cond_6c
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/c/f;->h()Lcom/bytedance/sdk/component/d/p;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/d/p;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/f;->c()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_83

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :cond_83
    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/bytedance/sdk/component/d/d/k;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/d/c/c;)V
    :try_end_8a
    .catchall {:try_start_c .. :try_end_8a} :catchall_8b

    goto :goto_93

    :catchall_8b
    move-exception v0

    const/16 v1, 0x3ec

    const-string v2, "net request failed!"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/bytedance/sdk/component/d/d/k;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/d/c/c;)V

    :goto_93
    return-void
.end method

###### Class com.bytedance.sdk.component.d.d.k.AnonymousClass1 (com.bytedance.sdk.component.d.d.k$1)
.class Lcom/bytedance/sdk/component/d/d/k$1;
.super Ljava/lang/Object;
.source "NetVisitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/d/k;->a(Lcom/bytedance/sdk/component/d/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/d/b;

.field final synthetic b:Lcom/bytedance/sdk/component/d/c/f;

.field final synthetic c:Lcom/bytedance/sdk/component/d/c/c;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:Lcom/bytedance/sdk/component/d/d/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/d/d/k;Lcom/bytedance/sdk/component/d/b;Lcom/bytedance/sdk/component/d/c/f;Lcom/bytedance/sdk/component/d/c/c;Ljava/lang/String;[B)V
    .registers 7

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/d/k$1;->f:Lcom/bytedance/sdk/component/d/d/k;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/d/k$1;->a:Lcom/bytedance/sdk/component/d/b;

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/d/k$1;->b:Lcom/bytedance/sdk/component/d/c/f;

    iput-object p4, p0, Lcom/bytedance/sdk/component/d/d/k$1;->c:Lcom/bytedance/sdk/component/d/c/c;

    iput-object p5, p0, Lcom/bytedance/sdk/component/d/d/k$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/component/d/d/k$1;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/d/k$1;->a:Lcom/bytedance/sdk/component/d/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/d/k$1;->b:Lcom/bytedance/sdk/component/d/c/f;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/d/k$1;->c:Lcom/bytedance/sdk/component/d/c/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/c;->t()Lcom/bytedance/sdk/component/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/f;->c(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/d/k$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/d/k$1;->e:[B

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method
