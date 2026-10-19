###### Class com.applovin.exoplayer2.i.c (com.applovin.exoplayer2.i.c)
.class public final Lcom/applovin/exoplayer2/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/i/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/i/c$a;
    }
.end annotation


# instance fields
.field private final On:Lcom/applovin/exoplayer2/i/b;

.field private final Oo:Lcom/applovin/exoplayer2/i/j;

.field private final Op:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/applovin/exoplayer2/i/k;",
            ">;"
        }
    .end annotation
.end field

.field private Oq:I

.field private cw:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/i/b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/b;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c;->On:Lcom/applovin/exoplayer2/i/b;

    new-instance v0, Lcom/applovin/exoplayer2/i/j;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/j;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Op:Ljava/util/Deque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2f

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/c;->Op:Ljava/util/Deque;

    new-instance v3, Lcom/applovin/exoplayer2/i/e;

    new-instance v4, Lcom/applovin/exoplayer2/i/o;

    invoke-direct {v4, p0}, Lcom/applovin/exoplayer2/i/o;-><init>(Lcom/applovin/exoplayer2/i/c;)V

    invoke-direct {v3, v4}, Lcom/applovin/exoplayer2/i/e;-><init>(Lcom/applovin/exoplayer2/c/i$a;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2f
    iput v0, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/i/k;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Op:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Op:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/k;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Op:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/exoplayer2/i/c;Lcom/applovin/exoplayer2/i/k;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/c;->a(Lcom/applovin/exoplayer2/i/k;)V

    return-void
.end method


# virtual methods
.method public synthetic D(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/c/f;
        }
    .end annotation

    check-cast p1, Lcom/applovin/exoplayer2/i/j;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/i/c;->a(Lcom/applovin/exoplayer2/i/j;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/i/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/c;->cw:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    if-ne v0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    return-void
.end method

.method public bd(J)V
    .registers 3

    return-void
.end method

.method public dI()V
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/c;->cw:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    return-void
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

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/c;->lV()Lcom/applovin/exoplayer2/i/j;

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

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/c;->lW()Lcom/applovin/exoplayer2/i/k;

    move-result-object v0

    return-object v0
.end method

.method public lV()Lcom/applovin/exoplayer2/i/j;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/c;->cw:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    iput v1, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    return-object v0
.end method

.method public lW()Lcom/applovin/exoplayer2/i/k;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/c;->cw:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Op:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_58

    :cond_15
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c;->Op:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/k;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/c/a;->bt(I)V

    goto :goto_4f

    :cond_2a
    new-instance v4, Lcom/applovin/exoplayer2/i/c$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    iget-wide v2, v1, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iget-object v5, p0, Lcom/applovin/exoplayer2/i/c;->On:Lcom/applovin/exoplayer2/i/b;

    iget-object v1, v1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/i/b;->F([B)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    invoke-direct {v4, v2, v3, v1}, Lcom/applovin/exoplayer2/i/c$a;-><init>(JLcom/applovin/exoplayer2/common/a/s;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    iget-wide v2, v1, Lcom/applovin/exoplayer2/c/g;->rJ:J

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/i/k;->a(JLcom/applovin/exoplayer2/i/f;J)V

    :goto_4f
    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c;->Oo:Lcom/applovin/exoplayer2/i/j;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/g;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/applovin/exoplayer2/i/c;->Oq:I

    return-object v0

    :cond_58
    :goto_58
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/c;->cw:Z

    return-void
.end method

###### Class com.applovin.exoplayer2.i.c.a (com.applovin.exoplayer2.i.c$a)
.class final Lcom/applovin/exoplayer2/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/i/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Or:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final rJ:J


# direct methods
.method public constructor <init>(JLcom/applovin/exoplayer2/common/a/s;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    iput-object p3, p0, Lcom/applovin/exoplayer2/i/c$a;->Or:Lcom/applovin/exoplayer2/common/a/s;

    return-void
.end method


# virtual methods
.method public be(J)I
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    return p1
.end method

.method public bf(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/c$a;->Or:Lcom/applovin/exoplayer2/common/a/s;

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public ej(I)J
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    return-wide v0
.end method

.method public lX()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.applovin.exoplayer2.i.o (com.applovin.exoplayer2.i.o)
.class public final synthetic Lcom/applovin/exoplayer2/i/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/c/i$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/i/c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/i/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/o;->a:Lcom/applovin/exoplayer2/i/c;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/o;->a:Lcom/applovin/exoplayer2/i/c;

    check-cast p1, Lcom/applovin/exoplayer2/i/k;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/i/c;->b(Lcom/applovin/exoplayer2/i/c;Lcom/applovin/exoplayer2/i/k;)V

    return-void
.end method
