###### Class com.tapjoy.internal.n1 (com.tapjoy.internal.n1)
.class public final Lcom/tapjoy/internal/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/h;->b:Lcom/tapjoy/internal/c8;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/c8;->a(Ljava/lang/Object;)V

    return-void
.end method
