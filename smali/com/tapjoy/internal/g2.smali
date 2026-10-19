###### Class com.tapjoy.internal.g2 (com.tapjoy.internal.g2)
.class public Lcom/tapjoy/internal/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/a2;


# static fields
.field public static final a:Lcom/tapjoy/internal/p;


# instance fields
.field public final b:Lcom/tapjoy/internal/a2;

.field public final c:Lcom/tapjoy/internal/u3;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/p;

    invoke-direct {v0}, Lcom/tapjoy/internal/p;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/g2;->a:Lcom/tapjoy/internal/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/g2;->b:Lcom/tapjoy/internal/a2;

    iput-object v0, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/k9;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/g2;->b:Lcom/tapjoy/internal/a2;

    invoke-static {}, Lcom/tapjoy/internal/w2;->a()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {p1}, Lcom/tapjoy/internal/w2;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/x7;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    goto :goto_2e

    :cond_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Lcom/tapjoy/internal/h;->a()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_24

    sget-object p1, Lcom/tapjoy/internal/h;->c:Lcom/tapjoy/internal/a1;

    iput-object p1, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    goto :goto_2e

    :cond_24
    invoke-static {}, Lcom/tapjoy/internal/w2;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/w2;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/x7;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    :goto_2e
    return-void
.end method

.method public static a(Lcom/tapjoy/internal/k9;)Lcom/tapjoy/internal/g2;
    .registers 2

    instance-of v0, p0, Lcom/tapjoy/internal/g2;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    if-eqz p0, :cond_e

    new-instance v0, Lcom/tapjoy/internal/g2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/g2;-><init>(Lcom/tapjoy/internal/k9;)V

    return-object v0

    :cond_e
    sget-object p0, Lcom/tapjoy/internal/g2;->a:Lcom/tapjoy/internal/p;

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    new-instance v1, Lcom/tapjoy/internal/i0;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/i0;-><init>(Lcom/tapjoy/internal/g2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/u3;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tapjoy/internal/a;)V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    new-instance v1, Lcom/tapjoy/internal/q0;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/q0;-><init>(Lcom/tapjoy/internal/g2;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/u3;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    new-instance v1, Lcom/tapjoy/internal/v0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/v0;-><init>(Lcom/tapjoy/internal/g2;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/u3;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/g2;->c:Lcom/tapjoy/internal/u3;

    new-instance v1, Lcom/tapjoy/internal/x;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/x;-><init>(Lcom/tapjoy/internal/g2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/u3;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
