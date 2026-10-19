###### Class com.tapjoy.internal.v2 (com.tapjoy.internal.v2)
.class public final Lcom/tapjoy/internal/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Thread;

.field public final c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Thread;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/v2;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tapjoy/internal/v2;->b:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/tapjoy/internal/v2;->c:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget-object p1, p0, Lcom/tapjoy/internal/v2;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/tapjoy/internal/v2;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    new-instance p1, Lcom/tapjoy/internal/l2;

    invoke-direct {p1, p0, p2, p3}, Lcom/tapjoy/internal/l2;-><init>(Lcom/tapjoy/internal/v2;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/internal/v2;->c:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/tapjoy/internal/v2;->c:Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_33

    return-object v1

    :cond_33
    iget-object v0, p0, Lcom/tapjoy/internal/v2;->b:Ljava/lang/Thread;

    invoke-static {}, Lcom/tapjoy/internal/h;->a()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_44

    sget-object v0, Lcom/tapjoy/internal/h;->c:Lcom/tapjoy/internal/a1;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/a1;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_44

    return-object v1

    :cond_44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_56

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_56

    return-object v1

    :cond_56
    iget-object p1, p0, Lcom/tapjoy/internal/v2;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "method not return void: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
