###### Class com.bytedance.sdk.component.e.a.a.f (com.bytedance.sdk.component.e.a.a.f)
.class public Lcom/bytedance/sdk/component/e/a/a/f;
.super Ljava/lang/Object;
.source "RealTimeMemoryCacheStrategy.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/a/d;


# instance fields
.field a:Lcom/bytedance/sdk/component/e/a/a/e;

.field private b:Lcom/bytedance/sdk/component/e/a/a/b/e;

.field private c:Lcom/bytedance/sdk/component/e/a/a/b/a;

.field private d:Lcom/bytedance/sdk/component/e/a/a/b/b;

.field private e:Lcom/bytedance/sdk/component/e/a/a/b/g;

.field private f:Lcom/bytedance/sdk/component/e/a/a/b/c;

.field private g:Lcom/bytedance/sdk/component/e/a/a/b/f;

.field private h:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private i:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private j:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private k:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private l:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private m:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/f;->n:Ljava/util/Queue;

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->d()Lcom/bytedance/sdk/component/e/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->a:Lcom/bytedance/sdk/component/e/a/a/e;

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->l()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->h:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v1, Lcom/bytedance/sdk/component/e/a/a/b/e;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/e/a/a/b/e;-><init>(Lcom/bytedance/sdk/component/e/a/d/b/a;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/f;->b:Lcom/bytedance/sdk/component/e/a/a/b/e;

    :cond_26
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->j()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->j()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->j:Lcom/bytedance/sdk/component/e/a/d/b/a;

    goto :goto_4b

    :cond_41
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->m()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->j:Lcom/bytedance/sdk/component/e/a/d/b/a;

    :goto_4b
    new-instance v0, Lcom/bytedance/sdk/component/e/a/a/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/f;->j:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/e/a/a/b/b;-><init>(Lcom/bytedance/sdk/component/e/a/d/b/a;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->d:Lcom/bytedance/sdk/component/e/a/a/b/b;

    :cond_54
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->m()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->i:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v1, Lcom/bytedance/sdk/component/e/a/a/b/a;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/e/a/a/b/a;-><init>(Lcom/bytedance/sdk/component/e/a/d/b/a;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/f;->c:Lcom/bytedance/sdk/component/e/a/a/b/a;

    :cond_6b
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->m()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->k:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v1, Lcom/bytedance/sdk/component/e/a/a/b/g;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/e/a/a/b/g;-><init>(Lcom/bytedance/sdk/component/e/a/d/b/a;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/f;->e:Lcom/bytedance/sdk/component/e/a/a/b/g;

    :cond_82
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->n()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->l:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v1, Lcom/bytedance/sdk/component/e/a/a/b/c;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/e/a/a/b/c;-><init>(Lcom/bytedance/sdk/component/e/a/d/b/a;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/f;->f:Lcom/bytedance/sdk/component/e/a/a/b/c;

    :cond_99
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->o()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->m:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v1, Lcom/bytedance/sdk/component/e/a/a/b/f;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/e/a/a/b/f;-><init>(Lcom/bytedance/sdk/component/e/a/d/b/a;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/f;->g:Lcom/bytedance/sdk/component/e/a/a/b/f;

    :cond_b0
    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_27

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->b:Lcom/bytedance/sdk/component/e/a/a/b/e;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p3

    if-eqz p3, :cond_27

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->b:Lcom/bytedance/sdk/component/e/a/a/b/e;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_27

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_27

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->r()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_27
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result p3

    if-eqz p3, :cond_44

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->d:Lcom/bytedance/sdk/component/e/a/a/b/b;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p3

    if-eqz p3, :cond_44

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->d:Lcom/bytedance/sdk/component/e/a/a/b/b;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_44

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_44

    return-object p3

    :cond_44
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result p3

    if-eqz p3, :cond_6a

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->c:Lcom/bytedance/sdk/component/e/a/a/b/a;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p3

    if-eqz p3, :cond_6a

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->c:Lcom/bytedance/sdk/component/e/a/a/b/a;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6a

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6a

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->s()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_6a
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result p3

    if-eqz p3, :cond_90

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->e:Lcom/bytedance/sdk/component/e/a/a/b/g;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p3

    if-eqz p3, :cond_90

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->e:Lcom/bytedance/sdk/component/e/a/a/b/g;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_90

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_90

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->t()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_90
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result p3

    if-eqz p3, :cond_b6

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->f:Lcom/bytedance/sdk/component/e/a/a/b/c;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p3

    if-eqz p3, :cond_b6

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->f:Lcom/bytedance/sdk/component/e/a/a/b/c;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_b6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b6

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->u()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_b6
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result p3

    if-eqz p3, :cond_d3

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->g:Lcom/bytedance/sdk/component/e/a/a/b/f;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p3

    if-eqz p3, :cond_d3

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/f;->g:Lcom/bytedance/sdk/component/e/a/a/b/f;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_d3

    return-object p1

    :cond_d3
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/e/a/d/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2e

    if-ne v1, v2, :cond_2e

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->b:Lcom/bytedance/sdk/component/e/a/a/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(ILjava/util/List;)V

    goto :goto_7f

    :cond_2e
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v3, :cond_40

    if-ne v1, v4, :cond_40

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->d:Lcom/bytedance/sdk/component/e/a/a/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(ILjava/util/List;)V

    goto :goto_7f

    :cond_40
    if-nez v0, :cond_50

    if-ne v1, v4, :cond_50

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->c:Lcom/bytedance/sdk/component/e/a/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(ILjava/util/List;)V

    goto :goto_7f

    :cond_50
    if-ne v0, v2, :cond_60

    if-ne v1, v4, :cond_60

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result v5

    if-eqz v5, :cond_60

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->e:Lcom/bytedance/sdk/component/e/a/a/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(ILjava/util/List;)V

    goto :goto_7f

    :cond_60
    if-ne v0, v2, :cond_70

    if-ne v1, v3, :cond_70

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result v2

    if-eqz v2, :cond_70

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->f:Lcom/bytedance/sdk/component/e/a/a/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(ILjava/util/List;)V

    goto :goto_7f

    :cond_70
    if-ne v0, v4, :cond_7f

    if-ne v1, v3, :cond_7f

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->g:Lcom/bytedance/sdk/component/e/a/a/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(ILjava/util/List;)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/d/a;I)V
    .registers 8

    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result p2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_19

    if-ne v0, v1, :cond_19

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->b:Lcom/bytedance/sdk/component/e/a/a/b/e;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_6f

    :cond_19
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p2, v2, :cond_2b

    if-ne v0, v3, :cond_2b

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->d:Lcom/bytedance/sdk/component/e/a/a/b/b;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_6f

    :cond_2b
    if-nez p2, :cond_3b

    if-ne v0, v3, :cond_3b

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->c:Lcom/bytedance/sdk/component/e/a/a/b/a;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_6f

    :cond_3b
    if-ne p2, v1, :cond_4b

    if-ne v0, v3, :cond_4b

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->e:Lcom/bytedance/sdk/component/e/a/a/b/g;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_6f

    :cond_4b
    if-ne p2, v1, :cond_5b

    if-ne v0, v2, :cond_5b

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->f:Lcom/bytedance/sdk/component/e/a/a/b/c;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_6f

    :cond_5b
    if-ne p2, v3, :cond_6f

    if-ne v0, v2, :cond_6f

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result p2

    if-eqz p2, :cond_6f

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->g:Lcom/bytedance/sdk/component/e/a/a/b/f;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/b/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V
    :try_end_6a
    .catchall {:try_start_0 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public a(IZ)Z
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->b:Lcom/bytedance/sdk/component/e/a/a/b/e;

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->h:Lcom/bytedance/sdk/component/e/a/d/b/a;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p2

    if-nez p2, :cond_90

    :cond_18
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result p2

    if-eqz p2, :cond_30

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->d:Lcom/bytedance/sdk/component/e/a/a/b/b;

    if-eqz p2, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->j:Lcom/bytedance/sdk/component/e/a/d/b/a;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p2

    if-nez p2, :cond_90

    :cond_30
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result p2

    if-eqz p2, :cond_48

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->c:Lcom/bytedance/sdk/component/e/a/a/b/a;

    if-eqz p2, :cond_48

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->i:Lcom/bytedance/sdk/component/e/a/d/b/a;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p2

    if-nez p2, :cond_90

    :cond_48
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result p2

    if-eqz p2, :cond_60

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->e:Lcom/bytedance/sdk/component/e/a/a/b/g;

    if-eqz p2, :cond_60

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->k:Lcom/bytedance/sdk/component/e/a/d/b/a;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p2

    if-nez p2, :cond_90

    :cond_60
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result p2

    if-eqz p2, :cond_78

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->f:Lcom/bytedance/sdk/component/e/a/a/b/c;

    if-eqz p2, :cond_78

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->l:Lcom/bytedance/sdk/component/e/a/d/b/a;

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p2

    if-nez p2, :cond_90

    :cond_78
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result p2

    if-eqz p2, :cond_92

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/f;->g:Lcom/bytedance/sdk/component/e/a/a/b/f;

    if-eqz p2, :cond_92

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/f;->m:Lcom/bytedance/sdk/component/e/a/d/b/a;

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p1

    if-eqz p1, :cond_92

    :cond_90
    const/4 p1, 0x1

    goto :goto_93

    :cond_92
    const/4 p1, 0x0

    :goto_93
    return p1
.end method
