###### Class com.bytedance.sdk.component.d.d.h (com.bytedance.sdk.component.d.d.h)
.class public Lcom/bytedance/sdk/component/d/d/h;
.super Lcom/bytedance/sdk/component/d/d/a;
.source "FailVisitor.java"


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/d/a;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/d/d/h;->b:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/d/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/d/h;->a:Ljava/lang/Throwable;

    return-void
.end method

.method private b(Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->i()Lcom/bytedance/sdk/component/d/o;

    move-result-object p1

    if-eqz p1, :cond_f

    iget v0, p0, Lcom/bytedance/sdk/component/d/d/h;->b:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/d/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/d/h;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/d/o;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "failed"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 6

    new-instance v0, Lcom/bytedance/sdk/component/d/c/a;

    iget v1, p0, Lcom/bytedance/sdk/component/d/d/h;->b:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/d/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/d/d/h;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/c/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/c/a;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->s()Lcom/bytedance/sdk/component/d/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/f;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_26

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/d/h;->b(Lcom/bytedance/sdk/component/d/c/c;)V

    goto :goto_42

    :cond_26
    monitor-enter v2

    :try_start_27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/d/c/c;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/d/d/h;->b(Lcom/bytedance/sdk/component/d/c/c;)V

    goto :goto_2b

    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    :goto_42
    return-void

    :catchall_43
    move-exception p1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_43

    throw p1
.end method
