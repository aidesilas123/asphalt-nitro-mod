###### Class com.bytedance.sdk.component.e.a.a.c (com.bytedance.sdk.component.e.a.a.c)
.class public Lcom/bytedance/sdk/component/e/a/a/c;
.super Ljava/lang/Object;
.source "DBCacheStrategy.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/a/d;


# instance fields
.field private a:Lcom/bytedance/sdk/component/e/a/a/a/a/d;

.field private b:Lcom/bytedance/sdk/component/e/a/a/a/a/a;

.field private c:Lcom/bytedance/sdk/component/e/a/a/a/a/b;

.field private d:Lcom/bytedance/sdk/component/e/a/a/a/a/g;

.field private e:Lcom/bytedance/sdk/component/e/a/a/a/a/f;

.field private f:Lcom/bytedance/sdk/component/e/a/a/a/a/e;

.field private g:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private h:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private i:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private j:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private k:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private l:Lcom/bytedance/sdk/component/e/a/d/b/a;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->l()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->g:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v2, Lcom/bytedance/sdk/component/e/a/a/a/a/d;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/e/a/a/a/a/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/d;

    :cond_22
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->j()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->j()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->i:Lcom/bytedance/sdk/component/e/a/d/b/a;

    goto :goto_47

    :cond_3d
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->m()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->i:Lcom/bytedance/sdk/component/e/a/d/b/a;

    :goto_47
    new-instance v1, Lcom/bytedance/sdk/component/e/a/a/a/a/b;

    iget-object v2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->i:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->c:Lcom/bytedance/sdk/component/e/a/a/a/a/b;

    :cond_50
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->m()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->h:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v2, Lcom/bytedance/sdk/component/e/a/a/a/a/a;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->b:Lcom/bytedance/sdk/component/e/a/a/a/a/a;

    :cond_67
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->m()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->j:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v2, Lcom/bytedance/sdk/component/e/a/a/a/a/g;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->d:Lcom/bytedance/sdk/component/e/a/a/a/a/g;

    :cond_7e
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->n()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->k:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v2, Lcom/bytedance/sdk/component/e/a/a/a/a/f;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/e/a/a/a/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->e:Lcom/bytedance/sdk/component/e/a/a/a/a/f;

    :cond_95
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->o()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->l:Lcom/bytedance/sdk/component/e/a/d/b/a;

    new-instance v2, Lcom/bytedance/sdk/component/e/a/a/a/a/e;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/e/a/a/a/a/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->f:Lcom/bytedance/sdk/component/e/a/a/a/a/e;

    :cond_ac
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_51

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    if-eqz p2, :cond_51

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    :try_start_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/e/a/d/a;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Lcom/bytedance/sdk/component/e/a/d/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_36

    goto :goto_14

    :catchall_36
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteMemList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DBCacheStrategy"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/e/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    if-eqz p1, :cond_5b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5b

    const/4 p1, 0x1

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x0

    :goto_5c
    return p1
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

    move-result p1

    const/4 p2, 0x1

    const-string v0, "_id"

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/e/a/a/c;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "high db get size:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    sget-object p3, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/e/a/b/a/a;->w()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    :cond_37
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->c:Lcom/bytedance/sdk/component/e/a/a/a/a/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/e/a/a/c;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "v3ad db get :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    return-object p1

    :cond_62
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->b:Lcom/bytedance/sdk/component/e/a/a/a/a/a;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/e/a/a/c;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_96

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adevent db get :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    sget-object p3, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/e/a/b/a/a;->x()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    :cond_96
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result p1

    if-eqz p1, :cond_ca

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->d:Lcom/bytedance/sdk/component/e/a/a/a/a/g;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/e/a/a/c;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_ca

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "real stats db get :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    sget-object p3, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/e/a/b/a/a;->y()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    :cond_ca
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_fe

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->e:Lcom/bytedance/sdk/component/e/a/a/a/a/f;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/e/a/a/c;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_fe

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "batch db get :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    sget-object p3, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/e/a/b/a/a;->z()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    :cond_fe
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result p1

    if-eqz p1, :cond_129

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->f:Lcom/bytedance/sdk/component/e/a/a/a/a/e;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/e/a/a/c;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_129

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "other db get :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    return-object p1

    :cond_129
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dbCache handleResult start"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_cf

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_cf

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/e/a/d/a;

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_21

    const/4 v2, -0x1

    if-ne p1, v2, :cond_cf

    :cond_21
    sget-object v2, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/e/a/b/a/a;->X()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    if-ne p1, v1, :cond_31

    goto :goto_3c

    :cond_31
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/e/a/b/a/a;->Z()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :goto_3c
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_56

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result p1

    if-ne p1, v1, :cond_56

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->b(Ljava/util/List;)V

    goto/16 :goto_cf

    :cond_56
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p1, v2, :cond_70

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result p1

    if-ne p1, v3, :cond_70

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->c:Lcom/bytedance/sdk/component/e/a/a/a/a/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->b(Ljava/util/List;)V

    goto :goto_cf

    :cond_70
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result p1

    if-nez p1, :cond_88

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result p1

    if-ne p1, v3, :cond_88

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->b:Lcom/bytedance/sdk/component/e/a/a/a/a/a;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->b(Ljava/util/List;)V

    goto :goto_cf

    :cond_88
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result p1

    if-ne p1, v1, :cond_a0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result p1

    if-ne p1, v3, :cond_a0

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->d:Lcom/bytedance/sdk/component/e/a/a/a/a/g;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->b(Ljava/util/List;)V

    goto :goto_cf

    :cond_a0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result p1

    if-ne p1, v1, :cond_b8

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result p1

    if-ne p1, v2, :cond_b8

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->e:Lcom/bytedance/sdk/component/e/a/a/a/a/f;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->b(Ljava/util/List;)V

    goto :goto_cf

    :cond_b8
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result p1

    if-ne p1, v3, :cond_cf

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result p1

    if-ne p1, v2, :cond_cf

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->f:Lcom/bytedance/sdk/component/e/a/a/a/a/e;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->b(Ljava/util/List;)V

    :cond_cf
    :goto_cf
    const-string p1, "dbCache handleResult end"

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/d/a;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/e/a/d/a;->b(J)V

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, p2, :cond_24

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/c;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto/16 :goto_ac

    :cond_24
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_3f

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v2, :cond_3f

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/c;->c:Lcom/bytedance/sdk/component/e/a/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto/16 :goto_ac

    :cond_3f
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-nez v0, :cond_57

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v2, :cond_57

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/c;->b:Lcom/bytedance/sdk/component/e/a/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_ac

    :cond_57
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-ne v0, p2, :cond_6f

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v2, :cond_6f

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/c;->d:Lcom/bytedance/sdk/component/e/a/a/a/a/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_ac

    :cond_6f
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-ne v0, p2, :cond_87

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v1, :cond_87

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/c;->e:Lcom/bytedance/sdk/component/e/a/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_ac

    :cond_87
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-ne v0, v2, :cond_ac

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v1, :cond_ac

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/c;->f:Lcom/bytedance/sdk/component/e/a/a/a/a/e;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V
    :try_end_9e
    .catchall {:try_start_4 .. :try_end_9e} :catchall_9f

    goto :goto_ac

    :catchall_9f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->G()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method public a(IZ)Z
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/d;

    if-eqz p2, :cond_1b

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->n()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result p2

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->c:Lcom/bytedance/sdk/component/e/a/a/a/a/b;

    if-eqz p2, :cond_2c

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2c

    return v0

    :cond_2c
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result p2

    if-eqz p2, :cond_46

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->b:Lcom/bytedance/sdk/component/e/a/a/a/a/a;

    if-eqz p2, :cond_46

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_46

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->o()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    :cond_46
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result p2

    if-eqz p2, :cond_60

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->d:Lcom/bytedance/sdk/component/e/a/a/a/a/g;

    if-eqz p2, :cond_60

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->a(I)Z

    move-result p2

    if-eqz p2, :cond_60

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->p()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    :cond_60
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result p2

    if-eqz p2, :cond_7a

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->e:Lcom/bytedance/sdk/component/e/a/a/a/a/f;

    if-eqz p2, :cond_7a

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->a(I)Z

    move-result p2

    if-eqz p2, :cond_7a

    sget-object p1, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/b/a/a;->q()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    :cond_7a
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result p2

    if-eqz p2, :cond_8b

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->f:Lcom/bytedance/sdk/component/e/a/a/a/a/e;

    if-eqz p2, :cond_8b

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_8b

    return v0

    :cond_8b
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/bytedance/sdk/component/e/a/d/a;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    const/4 v1, 0x0

    const-string v2, "_id"

    const/4 v3, 0x1

    if-nez v0, :cond_3e

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v3, :cond_3e

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->g:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    if-le p1, p2, :cond_3d

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->g:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/d;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_3c

    sget-object p2, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/e/a/b/a/a;->A()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_3c
    return-object p1

    :cond_3d
    return-object v1

    :cond_3e
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v4, :cond_68

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v5, :cond_68

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->i:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    if-le p1, p2, :cond_13b

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->i:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->c:Lcom/bytedance/sdk/component/e/a/a/a/a/b;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_68
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-nez v0, :cond_a1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v5, :cond_a1

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->h:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    if-le p1, p2, :cond_13b

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->h:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->b:Lcom/bytedance/sdk/component/e/a/a/a/a/a;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_a0

    sget-object p2, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/e/a/b/a/a;->B()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_a0
    return-object p1

    :cond_a1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-ne v0, v3, :cond_da

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v5, :cond_da

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_da

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->j:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    if-le p1, p2, :cond_13b

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->j:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->d:Lcom/bytedance/sdk/component/e/a/a/a/a/g;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_d9

    sget-object p2, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/e/a/b/a/a;->C()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_d9
    return-object p1

    :cond_da
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-ne v0, v3, :cond_113

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result v0

    if-ne v0, v4, :cond_113

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->k:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    if-le p1, p2, :cond_13b

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->k:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->e:Lcom/bytedance/sdk/component/e/a/a/a/a/f;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_112

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_112

    sget-object p2, Lcom/bytedance/sdk/component/e/a/b/d;->d:Lcom/bytedance/sdk/component/e/a/b/a/a;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/e/a/b/a/a;->D()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/e/a/c/b;->a(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_112
    return-object p1

    :cond_113
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    if-ne v0, v5, :cond_13b

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->e()B

    move-result p1

    if-ne p1, v4, :cond_13b

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/a;->f()Z

    move-result p1

    if-eqz p1, :cond_13b

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->l:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    if-le p1, p2, :cond_13b

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/c;->l:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/c;->f:Lcom/bytedance/sdk/component/e/a/a/a/a/e;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/g;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_13b
    return-object v1
.end method
