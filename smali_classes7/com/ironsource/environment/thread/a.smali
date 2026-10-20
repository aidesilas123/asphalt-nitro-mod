###### Class com.json.environment.thread.a (com.ironsource.environment.thread.a)
.class public final synthetic Lcom/ironsource/environment/thread/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/environment/thread/a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/ironsource/environment/thread/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/environment/thread/a;->a:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/ironsource/environment/thread/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->e(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
