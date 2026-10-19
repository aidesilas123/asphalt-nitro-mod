###### Class com.applovin.exoplayer2.l.p (com.applovin.exoplayer2.l.p)
.class public final Lcom/applovin/exoplayer2/l/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/l/p$c;,
        Lcom/applovin/exoplayer2/l/p$b;,
        Lcom/applovin/exoplayer2/l/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final acd:Lcom/applovin/exoplayer2/l/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/l/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final ace:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final acf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final bR:Lcom/applovin/exoplayer2/l/d;

.field private final cm:Lcom/applovin/exoplayer2/l/o;

.field private cw:Z

.field private final hv:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/applovin/exoplayer2/l/p$c<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/applovin/exoplayer2/l/d;Lcom/applovin/exoplayer2/l/p$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/applovin/exoplayer2/l/d;",
            "Lcom/applovin/exoplayer2/l/p$b<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/exoplayer2/l/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/applovin/exoplayer2/l/d;Lcom/applovin/exoplayer2/l/p$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/applovin/exoplayer2/l/d;Lcom/applovin/exoplayer2/l/p$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/applovin/exoplayer2/l/p$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/applovin/exoplayer2/l/d;",
            "Lcom/applovin/exoplayer2/l/p$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/l/p;->bR:Lcom/applovin/exoplayer2/l/d;

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lcom/applovin/exoplayer2/l/p;->acd:Lcom/applovin/exoplayer2/l/p$b;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/p;->ace:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/p;->acf:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/applovin/exoplayer2/l/c0;

    invoke-direct {p1, p0}, Lcom/applovin/exoplayer2/l/c0;-><init>(Lcom/applovin/exoplayer2/l/p;)V

    invoke-interface {p3, p2, p1}, Lcom/applovin/exoplayer2/l/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/applovin/exoplayer2/l/o;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/p;->cm:Lcom/applovin/exoplayer2/l/o;

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V
    .registers 4

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/l/p$c;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/l/p$c;->c(ILcom/applovin/exoplayer2/l/p$a;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/l/p;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V

    return-void
.end method

.method public static synthetic d(Lcom/applovin/exoplayer2/l/p;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/l/p;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget-object p1, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/l/p$c;

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p;->acd:Lcom/applovin/exoplayer2/l/p$b;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/p$c;->b(Lcom/applovin/exoplayer2/l/p$b;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fq(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_20
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public O(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/l/p$c;

    iget-object v2, v1, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/p;->acd:Lcom/applovin/exoplayer2/l/p$b;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/p$c;->a(Lcom/applovin/exoplayer2/l/p$b;)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_25
    return-void
.end method

.method public a(Landroid/os/Looper;Lcom/applovin/exoplayer2/l/p$b;)Lcom/applovin/exoplayer2/l/p;
    .registers 6
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/applovin/exoplayer2/l/p$b<",
            "TT;>;)",
            "Lcom/applovin/exoplayer2/l/p<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/l/p;

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/p;->bR:Lcom/applovin/exoplayer2/l/d;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/applovin/exoplayer2/l/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/applovin/exoplayer2/l/d;Lcom/applovin/exoplayer2/l/p$b;)V

    return-object v0
.end method

.method public a(ILcom/applovin/exoplayer2/l/p$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/applovin/exoplayer2/l/p$a<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p;->acf:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/applovin/exoplayer2/l/b0;

    invoke-direct {v2, v0, p1, p2}, Lcom/applovin/exoplayer2/l/b0;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/p;->cw:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/applovin/exoplayer2/l/p$c;

    invoke-direct {v1, p1}, Lcom/applovin/exoplayer2/l/p$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(ILcom/applovin/exoplayer2/l/p$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/applovin/exoplayer2/l/p$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/l/p;->a(ILcom/applovin/exoplayer2/l/p$a;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/p;->oZ()V

    return-void
.end method

.method public oZ()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->acf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fq(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->cm:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fr(I)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->a(Lcom/applovin/exoplayer2/l/o$a;)Z

    :cond_1b
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->ace:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p;->ace:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/p;->acf:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p;->acf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_32

    return-void

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->ace:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->ace:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->ace:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_32

    :cond_4b
    return-void
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/l/p$c;

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/p;->acd:Lcom/applovin/exoplayer2/l/p$b;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/p$c;->a(Lcom/applovin/exoplayer2/l/p$b;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/l/p;->cw:Z

    return-void
.end method

###### Class com.applovin.exoplayer2.l.p.a (com.applovin.exoplayer2.l.p$a)
.class public interface abstract Lcom/applovin/exoplayer2/l/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract invoke(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class com.applovin.exoplayer2.l.p.b (com.applovin.exoplayer2.l.p$b)
.class public interface abstract Lcom/applovin/exoplayer2/l/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract invoke(Ljava/lang/Object;Lcom/applovin/exoplayer2/l/m;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/applovin/exoplayer2/l/m;",
            ")V"
        }
    .end annotation
.end method

###### Class com.applovin.exoplayer2.l.p.c (com.applovin.exoplayer2.l.p$c)
.class final Lcom/applovin/exoplayer2/l/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final acg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private ach:Z

.field private cw:Z

.field private gJ:Lcom/applovin/exoplayer2/l/m$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    new-instance p1, Lcom/applovin/exoplayer2/l/m$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/m$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/p$c;->gJ:Lcom/applovin/exoplayer2/l/m$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/l/p$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/p$b<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/l/p$c;->cw:Z

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/p$c;->ach:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p$c;->gJ:Lcom/applovin/exoplayer2/l/m$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/m$a;->oV()Lcom/applovin/exoplayer2/l/m;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/l/p$b;->invoke(Ljava/lang/Object;Lcom/applovin/exoplayer2/l/m;)V

    :cond_12
    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/l/p$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/p$b<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/p$c;->cw:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/p$c;->ach:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p$c;->gJ:Lcom/applovin/exoplayer2/l/m$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/m$a;->oV()Lcom/applovin/exoplayer2/l/m;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/l/m$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/l/m$a;-><init>()V

    iput-object v1, p0, Lcom/applovin/exoplayer2/l/p$c;->gJ:Lcom/applovin/exoplayer2/l/m$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/l/p$c;->ach:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/applovin/exoplayer2/l/p$b;->invoke(Ljava/lang/Object;Lcom/applovin/exoplayer2/l/m;)V

    :cond_1d
    return-void
.end method

.method public c(ILcom/applovin/exoplayer2/l/p$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/applovin/exoplayer2/l/p$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/p$c;->cw:Z

    if-nez v0, :cond_14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p$c;->gJ:Lcom/applovin/exoplayer2/l/m$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/m$a;->fo(I)Lcom/applovin/exoplayer2/l/m$a;

    :cond_c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/l/p$c;->ach:Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/l/p$a;->invoke(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lcom/applovin/exoplayer2/l/p$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/l/p$c;

    iget-object p1, p1, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/p$c;->acg:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class com.applovin.exoplayer2.l.b0 (com.applovin.exoplayer2.l.b0)
.class public final synthetic Lcom/applovin/exoplayer2/l/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic b:I

.field public final synthetic c:Lcom/applovin/exoplayer2/l/p$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/b0;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/applovin/exoplayer2/l/b0;->b:I

    iput-object p3, p0, Lcom/applovin/exoplayer2/l/b0;->c:Lcom/applovin/exoplayer2/l/p$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/b0;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/applovin/exoplayer2/l/b0;->b:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/b0;->c:Lcom/applovin/exoplayer2/l/p$a;

    invoke-static {v0, v1, v2}, Lcom/applovin/exoplayer2/l/p;->c(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.l.c0 (com.applovin.exoplayer2.l.c0)
.class public final synthetic Lcom/applovin/exoplayer2/l/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/l/p;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/l/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/c0;->a:Lcom/applovin/exoplayer2/l/p;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/c0;->a:Lcom/applovin/exoplayer2/l/p;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/p;->d(Lcom/applovin/exoplayer2/l/p;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
