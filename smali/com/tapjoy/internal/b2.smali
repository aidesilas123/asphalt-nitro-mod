###### Class com.tapjoy.internal.b2 (com.tapjoy.internal.b2)
.class public final Lcom/tapjoy/internal/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic b:Lcom/tapjoy/internal/x2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/x2;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/b2;->b:Lcom/tapjoy/internal/x2;

    iput-object p2, p0, Lcom/tapjoy/internal/b2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 4

    sget-object p1, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    iget-object p1, p0, Lcom/tapjoy/internal/b2;->b:Lcom/tapjoy/internal/x2;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/tapjoy/internal/x2;->a:Z

    iget-object p1, p0, Lcom/tapjoy/internal/b2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
