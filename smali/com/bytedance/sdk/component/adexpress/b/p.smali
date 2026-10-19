###### Class com.bytedance.sdk.component.adexpress.b.p (com.bytedance.sdk.component.adexpress.b.p)
.class public Lcom/bytedance/sdk/component/adexpress/b/p;
.super Ljava/lang/Object;
.source "WebViewRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/b/p$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/component/adexpress/d/a;

.field private c:Lcom/bytedance/sdk/component/adexpress/b/h;

.field private d:Lcom/bytedance/sdk/component/adexpress/b/m;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/m;Lcom/bytedance/sdk/component/adexpress/d/a;Lcom/bytedance/sdk/component/adexpress/b/h;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->d:Lcom/bytedance/sdk/component/adexpress/b/m;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->c:Lcom/bytedance/sdk/component/adexpress/b/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->b:Lcom/bytedance/sdk/component/adexpress/d/a;

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->c:Lcom/bytedance/sdk/component/adexpress/b/h;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/adexpress/d/a;->a(Lcom/bytedance/sdk/component/adexpress/b/h;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/adexpress/b/j$a;I)V
    .registers 4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/b/p;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->d:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/adexpress/b/i;->a(I)V

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b(Lcom/bytedance/sdk/component/adexpress/b/j;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->a(Lcom/bytedance/sdk/component/adexpress/b/j;)V

    goto :goto_30

    :cond_26
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b()Lcom/bytedance/sdk/component/adexpress/b/o;

    move-result-object p1

    if-nez p1, :cond_2d

    return-void

    :cond_2d
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/b/o;->a_(I)V

    :goto_30
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/b/p;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/b/p;->e()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/b/p;Lcom/bytedance/sdk/component/adexpress/b/j$a;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/b/p;->a(Lcom/bytedance/sdk/component/adexpress/b/j$a;I)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/b/p;)Lcom/bytedance/sdk/component/adexpress/d/a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->b:Lcom/bytedance/sdk/component/adexpress/d/a;

    return-object p0
.end method

.method private e()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_13
    const-string v0, "RenderInterceptor"

    const-string v1, "WebView Render cancel timeout timer"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->b:Lcom/bytedance/sdk/component/adexpress/d/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/a;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/b/p;->e()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/j$a;)Z
    .registers 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->d:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->f()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_f

    const/16 v0, 0x6b

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/adexpress/b/p;->a(Lcom/bytedance/sdk/component/adexpress/b/j$a;I)V

    goto :goto_2b

    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/adexpress/b/p$a;

    invoke-direct {v3, p0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/b/p$a;-><init>(Lcom/bytedance/sdk/component/adexpress/b/p;ILcom/bytedance/sdk/component/adexpress/b/j$a;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->e:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->b:Lcom/bytedance/sdk/component/adexpress/d/a;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/b/p$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/component/adexpress/b/p$1;-><init>(Lcom/bytedance/sdk/component/adexpress/b/p;Lcom/bytedance/sdk/component/adexpress/b/j$a;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/d/a;->a(Lcom/bytedance/sdk/component/adexpress/b/g;)V

    :goto_2b
    return v1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->b:Lcom/bytedance/sdk/component/adexpress/d/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/a;->h()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->b:Lcom/bytedance/sdk/component/adexpress/d/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/a;->i()V

    return-void
.end method

.method public d()Lcom/bytedance/sdk/component/adexpress/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p;->b:Lcom/bytedance/sdk/component/adexpress/d/a;

    return-object v0
.end method

###### Class com.bytedance.sdk.component.adexpress.b.p.AnonymousClass1 (com.bytedance.sdk.component.adexpress.b.p$1)
.class Lcom/bytedance/sdk/component/adexpress/b/p$1;
.super Ljava/lang/Object;
.source "WebViewRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/b/p;->a(Lcom/bytedance/sdk/component/adexpress/b/j$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/b/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/b/p;Lcom/bytedance/sdk/component/adexpress/b/j$a;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->b:Lcom/bytedance/sdk/component/adexpress/b/p;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->b:Lcom/bytedance/sdk/component/adexpress/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/b/p;->a(Lcom/bytedance/sdk/component/adexpress/b/p;Lcom/bytedance/sdk/component/adexpress/b/j$a;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/b/n;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->b:Lcom/bytedance/sdk/component/adexpress/b/p;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/p;->a(Lcom/bytedance/sdk/component/adexpress/b/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->c()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b()Lcom/bytedance/sdk/component/adexpress/b/o;

    move-result-object p1

    if-nez p1, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->b:Lcom/bytedance/sdk/component/adexpress/b/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/b/p;->b(Lcom/bytedance/sdk/component/adexpress/b/p;)Lcom/bytedance/sdk/component/adexpress/d/a;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/b/o;->a(Lcom/bytedance/sdk/component/adexpress/b/d;Lcom/bytedance/sdk/component/adexpress/b/n;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->a(Z)V

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.b.p.a (com.bytedance.sdk.component.adexpress.b.p$a)
.class Lcom/bytedance/sdk/component/adexpress/b/p$a;
.super Ljava/lang/Object;
.source "WebViewRenderInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/b/p;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/b/p;ILcom/bytedance/sdk/component/adexpress/b/j$a;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$a;->b:Lcom/bytedance/sdk/component/adexpress/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/b/p$a;->c:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/b/p$a;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    const-string v0, "RenderInterceptor"

    const-string v2, "WebView Render timeout"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p$a;->b:Lcom/bytedance/sdk/component/adexpress/b/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/b/p;->b(Lcom/bytedance/sdk/component/adexpress/b/p;)Lcom/bytedance/sdk/component/adexpress/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/a;->a(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/p$a;->b:Lcom/bytedance/sdk/component/adexpress/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/b/p$a;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    const/16 v2, 0x6b

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/b/p;->a(Lcom/bytedance/sdk/component/adexpress/b/p;Lcom/bytedance/sdk/component/adexpress/b/j$a;I)V

    :cond_1e
    return-void
.end method
