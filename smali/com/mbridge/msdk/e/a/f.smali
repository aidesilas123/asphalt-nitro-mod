###### Class com.mbridge.msdk.e.a.f (com.mbridge.msdk.e.a.f)
.class public final Lcom/mbridge/msdk/e/a/f;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/mbridge/msdk/e/a/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/e/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/e/a/f$1;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/e/a/f$1;-><init>(Lcom/mbridge/msdk/e/a/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;",
            "Lcom/mbridge/msdk/e/a/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mbridge/msdk/e/a/f;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;",
            "Lcom/mbridge/msdk/e/a/o<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->s()V

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mbridge/msdk/e/a/f$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/mbridge/msdk/e/a/f$a;-><init>(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/u;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;",
            "Lcom/mbridge/msdk/e/a/u;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/mbridge/msdk/e/a/o;->a(Lcom/mbridge/msdk/e/a/u;)Lcom/mbridge/msdk/e/a/o;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mbridge/msdk/e/a/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/mbridge/msdk/e/a/f$a;-><init>(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.mbridge.msdk.e.a.f.AnonymousClass1 (com.mbridge.msdk.e.a.f$1)
.class final Lcom/mbridge/msdk/e/a/f$1;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/e/a/f;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/mbridge/msdk/e/a/f;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/e/a/f;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/f$1;->b:Lcom/mbridge/msdk/e/a/f;

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/f$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.mbridge.msdk.e.a.f.a (com.mbridge.msdk.e.a.f$a)
.class final Lcom/mbridge/msdk/e/a/f$a;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/e/a/m;

.field private final b:Lcom/mbridge/msdk/e/a/o;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/f$a;->a:Lcom/mbridge/msdk/e/a/m;

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/f$a;->b:Lcom/mbridge/msdk/e/a/o;

    iput-object p3, p0, Lcom/mbridge/msdk/e/a/f$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->a:Lcom/mbridge/msdk/e/a/m;

    invoke-virtual {v0}, Lcom/mbridge/msdk/e/a/m;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->a:Lcom/mbridge/msdk/e/a/m;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/e/a/m;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->b:Lcom/mbridge/msdk/e/a/o;

    invoke-virtual {v0}, Lcom/mbridge/msdk/e/a/o;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->a:Lcom/mbridge/msdk/e/a/m;

    iget-object v1, p0, Lcom/mbridge/msdk/e/a/f$a;->b:Lcom/mbridge/msdk/e/a/o;

    iget-object v1, v1, Lcom/mbridge/msdk/e/a/o;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/e/a/m;->a(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_22
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->a:Lcom/mbridge/msdk/e/a/m;

    iget-object v1, p0, Lcom/mbridge/msdk/e/a/f$a;->b:Lcom/mbridge/msdk/e/a/o;

    iget-object v1, v1, Lcom/mbridge/msdk/e/a/o;->c:Lcom/mbridge/msdk/e/a/u;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/u;)V

    :goto_2b
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->b:Lcom/mbridge/msdk/e/a/o;

    iget-boolean v0, v0, Lcom/mbridge/msdk/e/a/o;->d:Z

    if-eqz v0, :cond_32

    goto :goto_39

    :cond_32
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->a:Lcom/mbridge/msdk/e/a/m;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/e/a/m;->a(Ljava/lang/String;)V

    :goto_39
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/f$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_40
    return-void
.end method
