###### Class com.bytedance.sdk.openadsdk.n.a.b (com.bytedance.sdk.openadsdk.n.a.b)
.class public abstract Lcom/bytedance/sdk/openadsdk/n/a/b;
.super Ljava/lang/Object;
.source "PAGBaseMrcTracker.java"


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field protected final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:I

.field private final g:Ljava/lang/Integer;

.field private volatile h:Z

.field private final i:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->g:Ljava/lang/Integer;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->f:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->h:Z

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->i:I

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/n/a/b;->a(Landroid/view/View;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, -0x1

    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(ZLjava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;I)Lcom/bytedance/sdk/openadsdk/n/a/b;
    .registers 5

    if-eqz p0, :cond_8

    new-instance p0, Lcom/bytedance/sdk/openadsdk/n/a/h;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/n/a/h;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;I)V

    goto :goto_d

    :cond_8
    new-instance p0, Lcom/bytedance/sdk/openadsdk/n/a/c;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/n/a/c;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;I)V

    :goto_d
    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/n/a/g;->a(Lcom/bytedance/sdk/openadsdk/n/a/b;)V

    :cond_d
    return-void
.end method

.method public a(I)V
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->a()V

    return-void

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->m()V

    return-void

    :cond_f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->d()V

    return-void

    :cond_17
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/n/a/b;->b(I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_c

    const v0, 0x2000001

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b()I
    .registers 7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v2, 0x3

    if-eqz v0, :cond_54

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->h:Z

    if-eqz v3, :cond_1c

    goto :goto_54

    :cond_1c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->k()Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x2000001

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->j()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->k()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/n/a/e;->b(Ljava/lang/Integer;)V

    return v2

    :cond_38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    if-eqz v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x2

    :goto_53
    return v1

    :cond_54
    :goto_54
    return v2
.end method

.method protected abstract b(I)V
.end method

.method protected abstract c()Z
.end method

.method protected d()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->e()Lcom/bytedance/sdk/openadsdk/n/a/a;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->i:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/n/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/n/a/a;I)V

    :cond_15
    return-void
.end method

.method protected e()Lcom/bytedance/sdk/openadsdk/n/a/a;
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_d

    new-instance v0, Lcom/bytedance/sdk/openadsdk/n/a/a;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/n/a/a;-><init>(IIF)V

    return-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/bytedance/sdk/openadsdk/n/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/n/a/a;-><init>(IIF)V

    return-object v0

    :cond_1d
    new-instance v1, Lcom/bytedance/sdk/openadsdk/n/a/a;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/n/a/a;-><init>(IIF)V

    return-object v1
.end method

.method public abstract f()I
.end method

.method public g()V
    .registers 6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->h()V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->f:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_37

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->d()V

    :cond_37
    return-void
.end method

.method public h()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->h:Z

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/n/a/g;->b(Lcom/bytedance/sdk/openadsdk/n/a/b;)V

    return-void
.end method

.method public k()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public m()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->h()V

    return-void
.end method
