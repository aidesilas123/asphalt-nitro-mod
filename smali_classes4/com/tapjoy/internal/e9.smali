###### Class com.tapjoy.internal.e9 (com.tapjoy.internal.e9)
.class public final Lcom/tapjoy/internal/e9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/i5;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lcom/tapjoy/internal/t8;

.field public d:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/i5;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/tapjoy/internal/t8;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/t8;-><init>(Lcom/tapjoy/internal/e9;)V

    iput-object v0, p0, Lcom/tapjoy/internal/e9;->c:Lcom/tapjoy/internal/t8;

    iput-object p1, p0, Lcom/tapjoy/internal/e9;->a:Lcom/tapjoy/internal/i5;

    return-void
.end method
