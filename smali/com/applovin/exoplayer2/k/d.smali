###### Class com.applovin.exoplayer2.k.d (com.applovin.exoplayer2.k.d)
.class public interface abstract Lcom/applovin/exoplayer2/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/d$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/os/Handler;Lcom/applovin/exoplayer2/k/d$a;)V
.end method

.method public abstract a(Lcom/applovin/exoplayer2/k/d$a;)V
.end method

.method public abstract od()Lcom/applovin/exoplayer2/k/aa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

###### Class com.applovin.exoplayer2.k.d.a (com.applovin.exoplayer2.k.d$a)
.class public interface abstract Lcom/applovin/exoplayer2/k/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/d$a$a;
    }
.end annotation


# virtual methods
.method public abstract b(IJJ)V
.end method

###### Class com.applovin.exoplayer2.k.d.a.C0050a (com.applovin.exoplayer2.k.d$a$a)
.class public final Lcom/applovin/exoplayer2/k/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/d$a$a$a;
    }
.end annotation


# instance fields
.field private final Zl:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/applovin/exoplayer2/k/d$a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/d$a$a;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private static synthetic a(Lcom/applovin/exoplayer2/k/d$a$a$a;IJJ)V
    .registers 12

    invoke-static {p0}, Lcom/applovin/exoplayer2/k/d$a$a$a;->a(Lcom/applovin/exoplayer2/k/d$a$a$a;)Lcom/applovin/exoplayer2/k/d$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/applovin/exoplayer2/k/d$a;->b(IJJ)V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/exoplayer2/k/d$a$a$a;IJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/applovin/exoplayer2/k/d$a$a;->a(Lcom/applovin/exoplayer2/k/d$a$a$a;IJJ)V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Handler;Lcom/applovin/exoplayer2/k/d$a;)V
    .registers 5

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/k/d$a$a;->b(Lcom/applovin/exoplayer2/k/d$a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/d$a$a;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/applovin/exoplayer2/k/d$a$a$a;

    invoke-direct {v1, p1, p2}, Lcom/applovin/exoplayer2/k/d$a$a$a;-><init>(Landroid/os/Handler;Lcom/applovin/exoplayer2/k/d$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/k/d$a;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/d$a$a;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/k/d$a$a$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/k/d$a$a$a;->a(Lcom/applovin/exoplayer2/k/d$a$a$a;)Lcom/applovin/exoplayer2/k/d$a;

    move-result-object v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/d$a$a$a;->release()V

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/d$a$a;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    return-void
.end method

.method public g(IJJ)V
    .registers 16

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/d$a$a;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/applovin/exoplayer2/k/d$a$a$a;

    invoke-static {v3}, Lcom/applovin/exoplayer2/k/d$a$a$a;->b(Lcom/applovin/exoplayer2/k/d$a$a$a;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v3}, Lcom/applovin/exoplayer2/k/d$a$a$a;->c(Lcom/applovin/exoplayer2/k/d$a$a$a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v9, Lcom/applovin/exoplayer2/k/a0;

    move-object v2, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/applovin/exoplayer2/k/a0;-><init>(Lcom/applovin/exoplayer2/k/d$a$a$a;IJJ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_2a
    return-void
.end method

###### Class com.applovin.exoplayer2.k.d.a.C0050a.C0051a (com.applovin.exoplayer2.k.d$a$a$a)
.class final Lcom/applovin/exoplayer2/k/d$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/d$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Zm:Lcom/applovin/exoplayer2/k/d$a;

.field private cw:Z

.field private final jS:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/applovin/exoplayer2/k/d$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/d$a$a$a;->jS:Landroid/os/Handler;

    iput-object p2, p0, Lcom/applovin/exoplayer2/k/d$a$a$a;->Zm:Lcom/applovin/exoplayer2/k/d$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/k/d$a$a$a;)Lcom/applovin/exoplayer2/k/d$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/k/d$a$a$a;->Zm:Lcom/applovin/exoplayer2/k/d$a;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/k/d$a$a$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/k/d$a$a$a;->cw:Z

    return p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/k/d$a$a$a;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/k/d$a$a$a;->jS:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/k/d$a$a$a;->cw:Z

    return-void
.end method

###### Class com.applovin.exoplayer2.k.a0 (com.applovin.exoplayer2.k.a0)
.class public final synthetic Lcom/applovin/exoplayer2/k/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/k/d$a$a$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/k/d$a$a$a;IJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/a0;->a:Lcom/applovin/exoplayer2/k/d$a$a$a;

    iput p2, p0, Lcom/applovin/exoplayer2/k/a0;->b:I

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k/a0;->c:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/k/a0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/a0;->a:Lcom/applovin/exoplayer2/k/d$a$a$a;

    iget v1, p0, Lcom/applovin/exoplayer2/k/a0;->b:I

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k/a0;->c:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/k/a0;->d:J

    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/k/d$a$a;->c(Lcom/applovin/exoplayer2/k/d$a$a$a;IJJ)V

    return-void
.end method
