###### Class com.applovin.exoplayer2.c.j (com.applovin.exoplayer2.c.j)
.class public abstract Lcom/applovin/exoplayer2/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/applovin/exoplayer2/c/g;",
        "O:",
        "Lcom/applovin/exoplayer2/c/i;",
        "E:",
        "Lcom/applovin/exoplayer2/c/f;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/applovin/exoplayer2/c/d<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private cw:Z

.field private rA:I

.field private final rS:Ljava/lang/Thread;

.field private final rT:Ljava/lang/Object;

.field private final rU:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final rV:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final rW:[Lcom/applovin/exoplayer2/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private final rX:[Lcom/applovin/exoplayer2/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private rY:I

.field private rZ:I

.field private sa:Lcom/applovin/exoplayer2/c/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private sb:Lcom/applovin/exoplayer2/c/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private sc:Z


# direct methods
.method protected constructor <init>([Lcom/applovin/exoplayer2/c/g;[Lcom/applovin/exoplayer2/c/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rU:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rV:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/j;->rW:[Lcom/applovin/exoplayer2/c/g;

    array-length p1, p1

    iput p1, p0, Lcom/applovin/exoplayer2/c/j;->rY:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1f
    iget v1, p0, Lcom/applovin/exoplayer2/c/j;->rY:I

    if-ge v0, v1, :cond_2e

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rW:[Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/c/j;->ho()Lcom/applovin/exoplayer2/c/g;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2e
    iput-object p2, p0, Lcom/applovin/exoplayer2/c/j;->rX:[Lcom/applovin/exoplayer2/c/i;

    array-length p2, p2

    iput p2, p0, Lcom/applovin/exoplayer2/c/j;->rZ:I

    :goto_33
    iget p2, p0, Lcom/applovin/exoplayer2/c/j;->rZ:I

    if-ge p1, p2, :cond_42

    iget-object p2, p0, Lcom/applovin/exoplayer2/c/j;->rX:[Lcom/applovin/exoplayer2/c/i;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/c/j;->hp()Lcom/applovin/exoplayer2/c/i;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_42
    new-instance p1, Lcom/applovin/exoplayer2/c/j$1;

    const-string p2, "ExoPlayer:SimpleDecoder"

    invoke-direct {p1, p0, p2}, Lcom/applovin/exoplayer2/c/j$1;-><init>(Lcom/applovin/exoplayer2/c/j;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/j;->rS:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/c/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rX:[Lcom/applovin/exoplayer2/c/i;

    iget v1, p0, Lcom/applovin/exoplayer2/c/j;->rZ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/applovin/exoplayer2/c/j;->rZ:I

    aput-object p1, v0, v1

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/c/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->run()V

    return-void
.end method

.method private c(Lcom/applovin/exoplayer2/c/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rW:[Lcom/applovin/exoplayer2/c/g;

    iget v1, p0, Lcom/applovin/exoplayer2/c/j;->rY:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/applovin/exoplayer2/c/j;->rY:I

    aput-object p1, v0, v1

    return-void
.end method

.method private hk()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->sb:Lcom/applovin/exoplayer2/c/f;

    if-nez v0, :cond_5

    return-void

    :cond_5
    throw v0
.end method

.method private hl()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hn()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_b
    return-void
.end method

.method private hm()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/c/j;->cw:Z

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hn()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    :cond_13
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/c/j;->cw:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    monitor-exit v0

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rU:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/c/g;

    iget-object v3, p0, Lcom/applovin/exoplayer2/c/j;->rX:[Lcom/applovin/exoplayer2/c/i;

    iget v4, p0, Lcom/applovin/exoplayer2/c/j;->rZ:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/applovin/exoplayer2/c/j;->rZ:I

    aget-object v3, v3, v4

    iget-boolean v4, p0, Lcom/applovin/exoplayer2/c/j;->sc:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/c/j;->sc:Z

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_90

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/applovin/exoplayer2/c/a;->bt(I)V

    goto :goto_63

    :cond_3c
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v0

    if-eqz v0, :cond_47

    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lcom/applovin/exoplayer2/c/a;->bt(I)V

    :cond_47
    :try_start_47
    invoke-virtual {p0, v1, v3, v4}, Lcom/applovin/exoplayer2/c/j;->a(Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/c/i;Z)Lcom/applovin/exoplayer2/c/f;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4b} :catch_52
    .catch Ljava/lang/OutOfMemoryError; {:try_start_47 .. :try_end_4b} :catch_4c

    goto :goto_57

    :catch_4c
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/c/j;->a(Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/c/f;

    move-result-object v0

    goto :goto_57

    :catch_52
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/c/j;->a(Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/c/f;

    move-result-object v0

    :goto_57
    if-eqz v0, :cond_63

    iget-object v4, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5c
    iput-object v0, p0, Lcom/applovin/exoplayer2/c/j;->sb:Lcom/applovin/exoplayer2/c/f;

    monitor-exit v4

    return v2

    :catchall_60
    move-exception v0

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    :goto_63
    iget-object v4, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v4

    :try_start_66
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/c/j;->sc:Z

    if-eqz v0, :cond_6e

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/c/i;->release()V

    goto :goto_88

    :cond_6e
    invoke-virtual {v3}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget v0, p0, Lcom/applovin/exoplayer2/c/j;->rA:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/applovin/exoplayer2/c/j;->rA:I

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/c/i;->release()V

    goto :goto_88

    :cond_7d
    iget v0, p0, Lcom/applovin/exoplayer2/c/j;->rA:I

    iput v0, v3, Lcom/applovin/exoplayer2/c/i;->rA:I

    iput v2, p0, Lcom/applovin/exoplayer2/c/j;->rA:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rV:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_88
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/c/j;->c(Lcom/applovin/exoplayer2/c/g;)V

    monitor-exit v4

    return v5

    :catchall_8d
    move-exception v0

    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_66 .. :try_end_8f} :catchall_8d

    throw v0

    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1
.end method

.method private hn()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rU:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/applovin/exoplayer2/c/j;->rZ:I

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private run()V
    .registers 3

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hm()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_8

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    return-void

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public synthetic D(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    check-cast p1, Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/c/j;->b(Lcom/applovin/exoplayer2/c/g;)V

    return-void
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/c/i;Z)Lcom/applovin/exoplayer2/c/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public final b(Lcom/applovin/exoplayer2/c/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hk()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->sa:Lcom/applovin/exoplayer2/c/g;

    if-ne p1, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rU:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hl()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/j;->sa:Lcom/applovin/exoplayer2/c/g;

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method protected final bA(I)V
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/c/j;->rY:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rW:[Lcom/applovin/exoplayer2/c/g;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rW:[Lcom/applovin/exoplayer2/c/g;

    array-length v1, v0

    :goto_11
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/applovin/exoplayer2/c/g;->by(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1b
    return-void
.end method

.method public final dI()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/c/j;->sc:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/applovin/exoplayer2/c/j;->rA:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->sa:Lcom/applovin/exoplayer2/c/g;

    if-eqz v1, :cond_13

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/c/j;->c(Lcom/applovin/exoplayer2/c/g;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/exoplayer2/c/j;->sa:Lcom/applovin/exoplayer2/c/g;

    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rU:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rU:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/c/g;

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/c/j;->c(Lcom/applovin/exoplayer2/c/g;)V

    goto :goto_13

    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rV:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rV:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/c/i;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/i;->release()V

    goto :goto_27

    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public synthetic hc()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/c/j;->hi()Lcom/applovin/exoplayer2/c/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hd()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/c/j;->hj()Lcom/applovin/exoplayer2/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final hi()Lcom/applovin/exoplayer2/c/g;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hk()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->sa:Lcom/applovin/exoplayer2/c/g;

    const/4 v2, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v1, p0, Lcom/applovin/exoplayer2/c/j;->rY:I

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1e

    :cond_17
    iget-object v3, p0, Lcom/applovin/exoplayer2/c/j;->rW:[Lcom/applovin/exoplayer2/c/g;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/applovin/exoplayer2/c/j;->rY:I

    aget-object v1, v3, v1

    :goto_1e
    iput-object v1, p0, Lcom/applovin/exoplayer2/c/j;->sa:Lcom/applovin/exoplayer2/c/g;

    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public final hj()Lcom/applovin/exoplayer2/c/i;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hk()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rV:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rV:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/c/i;

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected abstract ho()Lcom/applovin/exoplayer2/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract hp()Lcom/applovin/exoplayer2/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public release()V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/c/j;->cw:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1a

    :try_start_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rS:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_19

    :catch_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_19
    return-void

    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j;->rT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/c/j;->a(Lcom/applovin/exoplayer2/c/i;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/j;->hl()V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method
