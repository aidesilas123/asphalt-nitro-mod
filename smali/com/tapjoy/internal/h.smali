###### Class com.tapjoy.internal.h (com.tapjoy.internal.h)
.class public abstract Lcom/tapjoy/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/c8;

.field public static final b:Lcom/tapjoy/internal/c8;

.field public static final c:Lcom/tapjoy/internal/a1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/c8;

    invoke-direct {v0}, Lcom/tapjoy/internal/c8;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/h;->a:Lcom/tapjoy/internal/c8;

    new-instance v0, Lcom/tapjoy/internal/c8;

    invoke-direct {v0}, Lcom/tapjoy/internal/c8;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/h;->b:Lcom/tapjoy/internal/c8;

    new-instance v0, Lcom/tapjoy/internal/a1;

    invoke-direct {v0}, Lcom/tapjoy/internal/a1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/h;->c:Lcom/tapjoy/internal/a1;

    return-void
.end method

.method public static a()Ljava/lang/Thread;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/h;->b:Lcom/tapjoy/internal/c8;

    iget-object v0, v0, Lcom/tapjoy/internal/c8;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method public static a(Landroid/opengl/GLSurfaceView;)V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h;->a:Lcom/tapjoy/internal/c8;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/c8;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/tapjoy/internal/n1;

    invoke-direct {v0}, Lcom/tapjoy/internal/n1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
