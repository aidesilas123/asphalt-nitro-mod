###### Class com.mbridge.msdk.e.g (com.mbridge.msdk.e.g)
.class final Lcom/mbridge/msdk/e/g;
.super Ljava/lang/Object;
.source "EventProcessor.java"

# interfaces
.implements Lcom/mbridge/msdk/e/l;


# instance fields
.field private final a:Lcom/mbridge/msdk/e/c;

.field private final b:Lcom/mbridge/msdk/e/r;

.field private final c:Lcom/mbridge/msdk/e/j;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:[J


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/e/c;Lcom/mbridge/msdk/e/r;Lcom/mbridge/msdk/e/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/g;->a:Lcom/mbridge/msdk/e/c;

    iput-object p2, p0, Lcom/mbridge/msdk/e/g;->b:Lcom/mbridge/msdk/e/r;

    iput-object p3, p0, Lcom/mbridge/msdk/e/g;->c:Lcom/mbridge/msdk/e/j;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/mbridge/msdk/e/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/mbridge/msdk/e/g;->e:[J

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/e/g;)Lcom/mbridge/msdk/e/r;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/g;->b:Lcom/mbridge/msdk/e/r;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/e/g;)Lcom/mbridge/msdk/e/c;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/g;->a:Lcom/mbridge/msdk/e/c;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/e/e;)V
    .registers 7

    iget-object p1, p0, Lcom/mbridge/msdk/e/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object p1, p0, Lcom/mbridge/msdk/e/g;->e:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, p1, v4

    iget-object p1, p0, Lcom/mbridge/msdk/e/g;->e:[J

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    return-void
.end method

.method public final a()[J
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/g;->e:[J

    array-length v1, v0

    if-nez v1, :cond_b

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_c

    :cond_b
    return-object v0

    :array_c
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public final b(Lcom/mbridge/msdk/e/e;)V
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/e/g$1;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/e/g$1;-><init>(Lcom/mbridge/msdk/e/g;Lcom/mbridge/msdk/e/e;)V

    iget-object p1, p0, Lcom/mbridge/msdk/e/g;->c:Lcom/mbridge/msdk/e/j;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/e/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.mbridge.msdk.e.g.AnonymousClass1 (com.mbridge.msdk.e.g$1)
.class final Lcom/mbridge/msdk/e/g$1;
.super Ljava/lang/Object;
.source "EventProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/e/g;->b(Lcom/mbridge/msdk/e/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/e/e;

.field final synthetic b:Lcom/mbridge/msdk/e/g;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/e/g;Lcom/mbridge/msdk/e/e;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/e/g$1;->b:Lcom/mbridge/msdk/e/g;

    iput-object p2, p0, Lcom/mbridge/msdk/e/g$1;->a:Lcom/mbridge/msdk/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    new-instance v0, Lcom/mbridge/msdk/e/i;

    iget-object v1, p0, Lcom/mbridge/msdk/e/g$1;->a:Lcom/mbridge/msdk/e/e;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/e/i;-><init>(Lcom/mbridge/msdk/e/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/e/i;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/e/i;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mbridge/msdk/e/g$1;->a:Lcom/mbridge/msdk/e/e;

    invoke-virtual {v3}, Lcom/mbridge/msdk/e/e;->h()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/e/i;->a(J)V

    iget-object v1, p0, Lcom/mbridge/msdk/e/g$1;->b:Lcom/mbridge/msdk/e/g;

    invoke-static {v1}, Lcom/mbridge/msdk/e/g;->a(Lcom/mbridge/msdk/e/g;)Lcom/mbridge/msdk/e/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/r;->c()V

    iget-object v1, p0, Lcom/mbridge/msdk/e/g$1;->b:Lcom/mbridge/msdk/e/g;

    invoke-static {v1}, Lcom/mbridge/msdk/e/g;->b(Lcom/mbridge/msdk/e/g;)Lcom/mbridge/msdk/e/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/e/c;->a(Lcom/mbridge/msdk/e/i;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_41

    iget-object v0, p0, Lcom/mbridge/msdk/e/g$1;->b:Lcom/mbridge/msdk/e/g;

    invoke-static {v0}, Lcom/mbridge/msdk/e/g;->a(Lcom/mbridge/msdk/e/g;)Lcom/mbridge/msdk/e/r;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/e/g$1;->a:Lcom/mbridge/msdk/e/e;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/e/r;->a(Lcom/mbridge/msdk/e/e;)V

    :cond_41
    return-void
.end method
