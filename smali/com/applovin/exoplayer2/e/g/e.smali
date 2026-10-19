###### Class com.applovin.exoplayer2.e.g.e (com.applovin.exoplayer2.e.g.e)
.class public Lcom/applovin/exoplayer2/e/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/g/e$b;,
        Lcom/applovin/exoplayer2/e/g/e$a;
    }
.end annotation


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;

.field private static final zK:[B

.field private static final zL:Lcom/applovin/exoplayer2/v;


# instance fields
.field private Aa:J

.field private Ab:I

.field private Ac:Lcom/applovin/exoplayer2/l/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Ad:J

.field private Ae:I

.field private Af:J

.field private Ag:J

.field private Ah:Lcom/applovin/exoplayer2/e/g/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Ai:I

.field private Aj:Z

.field private Ak:[Lcom/applovin/exoplayer2/e/x;

.field private Al:[Lcom/applovin/exoplayer2/e/x;

.field private Am:Z

.field private fH:J

.field private final jF:I

.field private final uO:Lcom/applovin/exoplayer2/l/y;

.field private vG:Lcom/applovin/exoplayer2/e/j;

.field private final wm:Lcom/applovin/exoplayer2/l/y;

.field private xJ:I

.field private xK:I

.field private final zM:Lcom/applovin/exoplayer2/e/g/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;"
        }
    .end annotation
.end field

.field private final zO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/g/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final zP:Lcom/applovin/exoplayer2/l/y;

.field private final zQ:Lcom/applovin/exoplayer2/l/y;

.field private final zR:[B

.field private final zS:Lcom/applovin/exoplayer2/l/ag;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zT:Lcom/applovin/exoplayer2/g/b/c;

.field private final zU:Lcom/applovin/exoplayer2/l/y;

.field private final zV:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/applovin/exoplayer2/e/g/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final zW:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/applovin/exoplayer2/e/g/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final zX:Lcom/applovin/exoplayer2/e/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zY:I

.field private zZ:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/e/g/p;->a:Lcom/applovin/exoplayer2/e/g/p;

    sput-object v0, Lcom/applovin/exoplayer2/e/g/e;->vq:Lcom/applovin/exoplayer2/e/l;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/applovin/exoplayer2/e/g/e;->zK:[B

    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/e/g/e;->zL:Lcom/applovin/exoplayer2/v;

    return-void

    nop

    :array_20
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/g/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/e/g/e;-><init>(ILcom/applovin/exoplayer2/l/ag;)V

    return-void
.end method

.method public constructor <init>(ILcom/applovin/exoplayer2/l/ag;)V
    .registers 5
    .param p2    # Lcom/applovin/exoplayer2/l/ag;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/applovin/exoplayer2/e/g/e;-><init>(ILcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/g/k;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/g/k;Ljava/util/List;)V
    .registers 11
    .param p2    # Lcom/applovin/exoplayer2/l/ag;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/applovin/exoplayer2/e/g/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/applovin/exoplayer2/l/ag;",
            "Lcom/applovin/exoplayer2/e/g/k;",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/g/e;-><init>(ILcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/g/k;Ljava/util/List;Lcom/applovin/exoplayer2/e/x;)V

    return-void
.end method

.method public constructor <init>(ILcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/g/k;Ljava/util/List;Lcom/applovin/exoplayer2/e/x;)V
    .registers 6
    .param p2    # Lcom/applovin/exoplayer2/l/ag;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/applovin/exoplayer2/e/g/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/applovin/exoplayer2/e/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/applovin/exoplayer2/l/ag;",
            "Lcom/applovin/exoplayer2/e/g/k;",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;",
            "Lcom/applovin/exoplayer2/e/x;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/e;->jF:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/e;->zS:Lcom/applovin/exoplayer2/l/ag;

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/g/e;->zM:Lcom/applovin/exoplayer2/e/g/k;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zN:Ljava/util/List;

    iput-object p5, p0, Lcom/applovin/exoplayer2/e/g/e;->zX:Lcom/applovin/exoplayer2/e/x;

    new-instance p1, Lcom/applovin/exoplayer2/g/b/c;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/g/b/c;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zT:Lcom/applovin/exoplayer2/g/b/c;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    sget-object p3, Lcom/applovin/exoplayer2/l/v;->abK:[B

    invoke-direct {p1, p3}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->wm:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zP:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zR:[B

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2, p1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/e;->uO:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zW:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/g/e;->fH:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/g/e;->Af:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/g/e;->Ag:J

    sget-object p1, Lcom/applovin/exoplayer2/e/j;->uw:Lcom/applovin/exoplayer2/e/j;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/applovin/exoplayer2/e/x;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    new-array p1, p1, [Lcom/applovin/exoplayer2/e/x;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->Al:[Lcom/applovin/exoplayer2/e/x;

    return-void
.end method

.method private G(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/applovin/exoplayer2/e/i;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    :cond_15
    iput v1, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zZ:I

    :cond_2c
    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    goto :goto_7c

    :cond_4b
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7c

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zl:J

    :cond_6d
    cmp-long v0, v4, v6

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    :cond_7c
    :goto_7c
    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_155

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v4

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zZ:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_99

    if-ne v0, v6, :cond_ab

    :cond_99
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Am:Z

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    new-instance v8, Lcom/applovin/exoplayer2/e/v$b;

    iget-wide v9, p0, Lcom/applovin/exoplayer2/e/g/e;->fH:J

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/applovin/exoplayer2/e/v$b;-><init>(JJ)V

    invoke-interface {v0, v8}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/e/g/e;->Am:Z

    :cond_ab
    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zZ:I

    if-ne v0, v7, :cond_cb

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_b6
    if-ge v7, v0, :cond_cb

    iget-object v8, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/applovin/exoplayer2/e/g/e$b;

    iget-object v8, v8, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iput-wide v4, v8, Lcom/applovin/exoplayer2/e/g/m;->AZ:J

    iput-wide v4, v8, Lcom/applovin/exoplayer2/e/g/m;->Bb:J

    iput-wide v4, v8, Lcom/applovin/exoplayer2/e/g/m;->Ba:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    :cond_cb
    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zZ:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_db

    iput-object v7, p0, Lcom/applovin/exoplayer2/e/g/e;->Ah:Lcom/applovin/exoplayer2/e/g/e$b;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Ad:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    return v3

    :cond_db
    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/e;->cn(I)Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/applovin/exoplayer2/e/g/a$a;

    iget v4, p0, Lcom/applovin/exoplayer2/e/g/e;->zZ:I

    invoke-direct {v2, v4, v0, v1}, Lcom/applovin/exoplayer2/e/g/a$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_104

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/g/e;->au(J)V

    goto :goto_14d

    :cond_104
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/e;->iL()V

    goto :goto_14d

    :cond_108
    iget p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zZ:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/g/e;->cm(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_143

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    if-ne p1, v1, :cond_13c

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_135

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->Ac:Lcom/applovin/exoplayer2/l/y;

    iput v3, p0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    goto :goto_14d

    :cond_135
    const-string p1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_13c
    const-string p1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {p1}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_143
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_14e

    iput-object v7, p0, Lcom/applovin/exoplayer2/e/g/e;->Ac:Lcom/applovin/exoplayer2/l/y;

    iput v3, p0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    :goto_14d
    return v3

    :cond_14e
    const-string p1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_155
    const-string p1, "Atom size less than header length (unsupported)."

    invoke-static {p1}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private H(Lcom/applovin/exoplayer2/e/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Aa:J

    long-to-int v1, v0

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ac:Lcom/applovin/exoplayer2/l/y;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    new-instance v1, Lcom/applovin/exoplayer2/e/g/a$b;

    iget v2, p0, Lcom/applovin/exoplayer2/e/g/e;->zZ:I

    invoke-direct {v1, v2, v0}, Lcom/applovin/exoplayer2/e/g/a$b;-><init>(ILcom/applovin/exoplayer2/l/y;)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/e/g/a$b;J)V

    goto :goto_25

    :cond_22
    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    :goto_25
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/g/e;->au(J)V

    return-void
.end method

.method private I(Lcom/applovin/exoplayer2/e/i;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v5, v1

    :goto_e
    if-ge v4, v0, :cond_31

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/e/g/e$b;

    iget-object v6, v6, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-boolean v7, v6, Lcom/applovin/exoplayer2/e/g/m;->Bn:Z

    if-eqz v7, :cond_2e

    iget-wide v6, v6, Lcom/applovin/exoplayer2/e/g/m;->Bb:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_2e

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/applovin/exoplayer2/e/g/e$b;

    move-wide v2, v6

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_31
    if-nez v5, :cond_37

    const/4 p1, 0x3

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    return-void

    :cond_37
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    if-ltz v0, :cond_48

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    iget-object v0, v5, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/g/m;->M(Lcom/applovin/exoplayer2/e/i;)V

    return-void

    :cond_48
    const-string p1, "Offset to encryption data was negative."

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private J(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/g/e;->Ah:Lcom/applovin/exoplayer2/e/g/e$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_43

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/g/e;->a(Landroid/util/SparseArray;)Lcom/applovin/exoplayer2/e/g/e$b;

    move-result-object v2

    if-nez v2, :cond_2a

    iget-wide v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ad:J

    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    if-ltz v2, :cond_23

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/g/e;->iL()V

    return v4

    :cond_23
    const-string v1, "Offset to end of mdat was negative."

    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v1

    throw v1

    :cond_2a
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iP()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v6, v5

    if-gez v6, :cond_3e

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    invoke-static {v5, v6}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_3e
    invoke-interface {v1, v6}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/g/e;->Ah:Lcom/applovin/exoplayer2/e/g/e$b;

    :cond_43
    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_b7

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iQ()I

    move-result v5

    iput v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    iget v9, v2, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    iget v10, v2, Lcom/applovin/exoplayer2/e/g/e$b;->Au:I

    if-ge v9, v10, :cond_67

    invoke-interface {v1, v5}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iT()V

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iS()Z

    move-result v1

    if-nez v1, :cond_64

    iput-object v3, v0, Lcom/applovin/exoplayer2/e/g/e;->Ah:Lcom/applovin/exoplayer2/e/g/e$b;

    :cond_64
    iput v6, v0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    return v8

    :cond_67
    iget-object v9, v2, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v9, v9, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget v9, v9, Lcom/applovin/exoplayer2/e/g/k;->AR:I

    if-ne v9, v8, :cond_77

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    invoke-interface {v1, v9}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    :cond_77
    iget-object v5, v2, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v5, v5, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object v5, v5, Lcom/applovin/exoplayer2/e/g/k;->dU:Lcom/applovin/exoplayer2/v;

    iget-object v5, v5, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    const/4 v9, 0x7

    invoke-virtual {v2, v5, v9}, Lcom/applovin/exoplayer2/e/g/e$b;->z(II)I

    move-result v5

    iput v5, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    iget-object v10, v0, Lcom/applovin/exoplayer2/e/g/e;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v5, v10}, Lcom/applovin/exoplayer2/b/c;->a(ILcom/applovin/exoplayer2/l/y;)V

    iget-object v5, v2, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object v10, v0, Lcom/applovin/exoplayer2/e/g/e;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v5, v10, v9}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    goto :goto_ac

    :cond_a4
    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    invoke-virtual {v2, v5, v4}, Lcom/applovin/exoplayer2/e/g/e$b;->z(II)I

    move-result v5

    iput v5, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    :goto_ac
    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    iget v9, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    iput v7, v0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    iput v4, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    :cond_b7
    iget-object v5, v2, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v5, v5, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object v9, v2, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iO()J

    move-result-wide v10

    iget-object v12, v0, Lcom/applovin/exoplayer2/e/g/e;->zS:Lcom/applovin/exoplayer2/l/ag;

    if-eqz v12, :cond_c9

    invoke-virtual {v12, v10, v11}, Lcom/applovin/exoplayer2/l/ag;->bs(J)J

    move-result-wide v10

    :cond_c9
    move-wide v14, v10

    iget v10, v5, Lcom/applovin/exoplayer2/e/g/k;->wo:I

    if-eqz v10, :cond_195

    iget-object v10, v0, Lcom/applovin/exoplayer2/e/g/e;->zP:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v10}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v10

    aput-byte v4, v10, v4

    aput-byte v4, v10, v8

    const/4 v11, 0x2

    aput-byte v4, v10, v11

    iget v11, v5, Lcom/applovin/exoplayer2/e/g/k;->wo:I

    add-int/lit8 v12, v11, 0x1

    rsub-int/lit8 v11, v11, 0x4

    :goto_e1
    iget v13, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    iget v6, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    if-ge v13, v6, :cond_1a6

    iget v6, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    if-nez v6, :cond_138

    invoke-interface {v1, v10, v11, v12}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->zP:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v4}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->zP:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v6

    if-lt v6, v8, :cond_131

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->wm:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v4}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->wm:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v9, v6, v7}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->zP:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v9, v6, v8}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->Al:[Lcom/applovin/exoplayer2/e/x;

    array-length v6, v6

    if-lez v6, :cond_121

    iget-object v6, v5, Lcom/applovin/exoplayer2/e/g/k;->dU:Lcom/applovin/exoplayer2/v;

    iget-object v6, v6, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    aget-byte v13, v10, v7

    invoke-static {v6, v13}, Lcom/applovin/exoplayer2/l/v;->a(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_121

    const/4 v6, 0x1

    goto :goto_122

    :cond_121
    const/4 v6, 0x0

    :goto_122
    iput-boolean v6, v0, Lcom/applovin/exoplayer2/e/g/e;->Aj:Z

    iget v6, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    iget v6, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    add-int/2addr v6, v11

    iput v6, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    const/4 v6, 0x3

    goto :goto_e1

    :cond_131
    const-string v1, "Invalid NAL length"

    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v1

    throw v1

    :cond_138
    iget-boolean v13, v0, Lcom/applovin/exoplayer2/e/g/e;->Aj:Z

    if-eqz v13, :cond_181

    iget-object v13, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v13, v6}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    iget v13, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    invoke-interface {v1, v6, v4, v13}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    iget v13, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    invoke-interface {v9, v6, v13}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget v6, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    iget-object v13, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v13}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v13

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v7

    invoke-static {v13, v7}, Lcom/applovin/exoplayer2/l/v;->i([BI)I

    move-result v7

    iget-object v13, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    iget-object v8, v5, Lcom/applovin/exoplayer2/e/g/k;->dU:Lcom/applovin/exoplayer2/v;

    iget-object v8, v8, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v3, "video/hevc"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v3, v7}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/g/e;->zQ:Lcom/applovin/exoplayer2/l/y;

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/g/e;->Al:[Lcom/applovin/exoplayer2/e/x;

    invoke-static {v14, v15, v3, v7}, Lcom/applovin/exoplayer2/e/b;->a(JLcom/applovin/exoplayer2/l/y;[Lcom/applovin/exoplayer2/e/x;)V

    goto :goto_185

    :cond_181
    invoke-interface {v9, v1, v6, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result v6

    :goto_185
    iget v3, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    iget v3, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    sub-int/2addr v3, v6

    iput v3, v0, Lcom/applovin/exoplayer2/e/g/e;->xK:I

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_e1

    :cond_195
    :goto_195
    iget v3, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    if-ge v3, v5, :cond_1a6

    sub-int/2addr v5, v3

    invoke-interface {v9, v1, v5, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result v3

    iget v5, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/applovin/exoplayer2/e/g/e;->xJ:I

    goto :goto_195

    :cond_1a6
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iR()I

    move-result v12

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iU()Lcom/applovin/exoplayer2/e/g/l;

    move-result-object v1

    if-eqz v1, :cond_1b3

    iget-object v1, v1, Lcom/applovin/exoplayer2/e/g/l;->xZ:Lcom/applovin/exoplayer2/e/x$a;

    goto :goto_1b4

    :cond_1b3
    const/4 v1, 0x0

    :goto_1b4
    iget v13, v0, Lcom/applovin/exoplayer2/e/g/e;->Ai:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    invoke-direct {v0, v4, v5}, Lcom/applovin/exoplayer2/e/g/e;->av(J)V

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/g/e$b;->iS()Z

    move-result v1

    if-nez v1, :cond_1ca

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/applovin/exoplayer2/e/g/e;->Ah:Lcom/applovin/exoplayer2/e/g/e$b;

    :cond_1ca
    const/4 v1, 0x3

    iput v1, v0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    const/4 v1, 0x1

    return v1
.end method

.method private static a(Lcom/applovin/exoplayer2/e/g/e$b;IILcom/applovin/exoplayer2/l/y;I)I
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/g/a;->cg(I)I

    move-result v1

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v3, v3, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object v4, v0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v5, v4, Lcom/applovin/exoplayer2/e/g/m;->AY:Lcom/applovin/exoplayer2/e/g/c;

    invoke-static {v5}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/exoplayer2/e/g/c;

    iget-object v6, v4, Lcom/applovin/exoplayer2/e/g/m;->Be:[I

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v7

    aput v7, v6, p1

    iget-object v6, v4, Lcom/applovin/exoplayer2/e/g/m;->Bd:[J

    iget-wide v7, v4, Lcom/applovin/exoplayer2/e/g/m;->Ba:J

    aput-wide v7, v6, p1

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_3b

    aget-wide v7, v6, p1

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_3b
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_43

    const/4 v6, 0x1

    goto :goto_44

    :cond_43
    const/4 v6, 0x0

    :goto_44
    iget v9, v5, Lcom/applovin/exoplayer2/e/g/c;->jF:I

    if-eqz v6, :cond_4c

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v9

    :cond_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_52

    const/4 v10, 0x1

    goto :goto_53

    :cond_52
    const/4 v10, 0x0

    :goto_53
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_59

    const/4 v11, 0x1

    goto :goto_5a

    :cond_59
    const/4 v11, 0x0

    :goto_5a
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_60

    const/4 v12, 0x1

    goto :goto_61

    :cond_60
    const/4 v12, 0x0

    :goto_61
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_67

    const/4 v1, 0x1

    goto :goto_68

    :cond_67
    const/4 v1, 0x0

    :goto_68
    iget-object v13, v3, Lcom/applovin/exoplayer2/e/g/k;->AS:[J

    if-eqz v13, :cond_8d

    array-length v14, v13

    if-ne v14, v8, :cond_8d

    aget-wide v14, v13, v7

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_8f

    iget-object v13, v3, Lcom/applovin/exoplayer2/e/g/k;->AT:[J

    invoke-static {v13}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    const-wide/32 v16, 0xf4240

    iget-wide v7, v3, Lcom/applovin/exoplayer2/e/g/k;->AP:J

    move-wide/from16 v18, v7

    invoke-static/range {v14 .. v19}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v14

    goto :goto_91

    :cond_8d
    const-wide/16 v16, 0x0

    :cond_8f
    move-wide/from16 v14, v16

    :goto_91
    iget-object v7, v4, Lcom/applovin/exoplayer2/e/g/m;->Bf:[I

    iget-object v8, v4, Lcom/applovin/exoplayer2/e/g/m;->Bg:[I

    iget-object v13, v4, Lcom/applovin/exoplayer2/e/g/m;->Bh:[J

    iget-object v2, v4, Lcom/applovin/exoplayer2/e/g/m;->Bi:[Z

    move/from16 v17, v9

    iget v9, v3, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    move-object/from16 v18, v2

    const/4 v2, 0x2

    if-ne v9, v2, :cond_a9

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_a9

    const/4 v2, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v2, 0x0

    :goto_aa
    iget-object v9, v4, Lcom/applovin/exoplayer2/e/g/m;->Be:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    iget-wide v2, v3, Lcom/applovin/exoplayer2/e/g/k;->AP:J

    move-wide/from16 v27, v14

    move-object v15, v13

    iget-wide v13, v4, Lcom/applovin/exoplayer2/e/g/m;->Bo:J

    move-wide/from16 v29, v13

    move/from16 v13, p4

    :goto_bd
    if-ge v13, v9, :cond_162

    if-eqz v10, :cond_c6

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v14

    goto :goto_c8

    :cond_c6
    iget v14, v5, Lcom/applovin/exoplayer2/e/g/c;->zG:I

    :goto_c8
    invoke-static {v14}, Lcom/applovin/exoplayer2/e/g/e;->cl(I)I

    move-result v14

    if-eqz v11, :cond_d9

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v19

    move/from16 v35, v19

    move/from16 v19, v10

    move/from16 v10, v35

    goto :goto_dd

    :cond_d9
    move/from16 v19, v10

    iget v10, v5, Lcom/applovin/exoplayer2/e/g/c;->oW:I

    :goto_dd
    invoke-static {v10}, Lcom/applovin/exoplayer2/e/g/e;->cl(I)I

    move-result v10

    if-eqz v12, :cond_ec

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v21

    move/from16 v31, v6

    move/from16 v6, v21

    goto :goto_f9

    :cond_ec
    if-nez v13, :cond_f5

    if-eqz v6, :cond_f5

    move/from16 v31, v6

    move/from16 v6, v17

    goto :goto_f9

    :cond_f5
    move/from16 v31, v6

    iget v6, v5, Lcom/applovin/exoplayer2/e/g/c;->jF:I

    :goto_f9
    if-eqz v1, :cond_112

    move/from16 v32, v1

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    move/from16 v33, v11

    move/from16 v34, v12

    int-to-long v11, v1

    const-wide/32 v21, 0xf4240

    mul-long v11, v11, v21

    div-long/2addr v11, v2

    long-to-int v1, v11

    aput v1, v8, v13

    const/16 v16, 0x0

    goto :goto_11c

    :cond_112
    move/from16 v32, v1

    move/from16 v33, v11

    move/from16 v34, v12

    const/16 v16, 0x0

    aput v16, v8, v13

    :goto_11c
    const-wide/32 v23, 0xf4240

    move-wide/from16 v21, v29

    move-wide/from16 v25, v2

    invoke-static/range {v21 .. v26}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v11

    sub-long v11, v11, v27

    aput-wide v11, v15, v13

    iget-boolean v1, v4, Lcom/applovin/exoplayer2/e/g/m;->Bp:Z

    if-nez v1, :cond_138

    aget-wide v11, v15, v13

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-wide v0, v1, Lcom/applovin/exoplayer2/e/g/n;->fH:J

    add-long/2addr v11, v0

    aput-wide v11, v15, v13

    :cond_138
    aput v10, v7, v13

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_146

    if-eqz p2, :cond_144

    if-nez v13, :cond_146

    :cond_144
    const/4 v0, 0x1

    goto :goto_147

    :cond_146
    const/4 v0, 0x0

    :goto_147
    aput-boolean v0, v18, v13

    int-to-long v10, v14

    move-wide/from16 v20, v2

    move-wide/from16 v1, v29

    add-long v29, v1, v10

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v19

    move-wide/from16 v2, v20

    move/from16 v6, v31

    move/from16 v1, v32

    move/from16 v11, v33

    move/from16 v12, v34

    goto/16 :goto_bd

    :cond_162
    move-wide/from16 v1, v29

    iput-wide v1, v4, Lcom/applovin/exoplayer2/e/g/m;->Bo:J

    return v9
.end method

.method private a(Landroid/util/SparseArray;I)Lcom/applovin/exoplayer2/e/g/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/g/c;",
            ">;I)",
            "Lcom/applovin/exoplayer2/e/g/c;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/g/c;

    return-object p1

    :cond_f
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/g/c;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/g/c;

    return-object p1
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/applovin/exoplayer2/e/g/e$b;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/g/e$b;",
            ">;)",
            "Lcom/applovin/exoplayer2/e/g/e$b;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_3d

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/exoplayer2/e/g/e$b;

    invoke-static {v5}, Lcom/applovin/exoplayer2/e/g/e$b;->a(Lcom/applovin/exoplayer2/e/g/e$b;)Z

    move-result v6

    if-nez v6, :cond_21

    iget v6, v5, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    iget-object v7, v5, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget v7, v7, Lcom/applovin/exoplayer2/e/g/n;->jA:I

    if-eq v6, v7, :cond_3a

    :cond_21
    invoke-static {v5}, Lcom/applovin/exoplayer2/e/g/e$b;->a(Lcom/applovin/exoplayer2/e/g/e$b;)Z

    move-result v6

    if-eqz v6, :cond_30

    iget v6, v5, Lcom/applovin/exoplayer2/e/g/e$b;->At:I

    iget-object v7, v5, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget v7, v7, Lcom/applovin/exoplayer2/e/g/m;->Bc:I

    if-ne v6, v7, :cond_30

    goto :goto_3a

    :cond_30
    invoke-virtual {v5}, Lcom/applovin/exoplayer2/e/g/e$b;->iP()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_3a

    move-object v1, v5

    move-wide v2, v6

    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_3d
    return-object v1
.end method

.method private static a(Lcom/applovin/exoplayer2/l/y;Landroid/util/SparseArray;Z)Lcom/applovin/exoplayer2/e/g/e$b;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/y;",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/g/e$b;",
            ">;Z)",
            "Lcom/applovin/exoplayer2/e/g/e$b;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/a;->cg(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    if-eqz p2, :cond_19

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1d

    :cond_19
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1d
    check-cast p1, Lcom/applovin/exoplayer2/e/g/e$b;

    if-nez p1, :cond_23

    const/4 p0, 0x0

    return-object p0

    :cond_23
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_31

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v1

    iget-object p2, p1, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iput-wide v1, p2, Lcom/applovin/exoplayer2/e/g/m;->Ba:J

    iput-wide v1, p2, Lcom/applovin/exoplayer2/e/g/m;->Bb:J

    :cond_31
    iget-object p2, p1, Lcom/applovin/exoplayer2/e/g/e$b;->Aq:Lcom/applovin/exoplayer2/e/g/c;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    :cond_3e
    iget v1, p2, Lcom/applovin/exoplayer2/e/g/c;->zF:I

    :goto_40
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_49

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v2

    goto :goto_4b

    :cond_49
    iget v2, p2, Lcom/applovin/exoplayer2/e/g/c;->zG:I

    :goto_4b
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_54

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v3

    goto :goto_56

    :cond_54
    iget v3, p2, Lcom/applovin/exoplayer2/e/g/c;->oW:I

    :goto_56
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result p0

    goto :goto_61

    :cond_5f
    iget p0, p2, Lcom/applovin/exoplayer2/e/g/c;->jF:I

    :goto_61
    iget-object p2, p1, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    new-instance v0, Lcom/applovin/exoplayer2/e/g/c;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/applovin/exoplayer2/e/g/c;-><init>(IIII)V

    iput-object v0, p2, Lcom/applovin/exoplayer2/e/g/m;->AY:Lcom/applovin/exoplayer2/e/g/c;

    return-object p1
.end method

.method private static a(Lcom/applovin/exoplayer2/e/g/a$a;Landroid/util/SparseArray;ZI[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/e/g/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/g/e$b;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/a$a;->zn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/g/a$a;->zn:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/e/g/a$a;

    iget v3, v2, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_1b

    invoke-static {v2, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/e/g/e;->b(Lcom/applovin/exoplayer2/e/g/a$a;Landroid/util/SparseArray;ZI[B)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/e/g/a$a;Lcom/applovin/exoplayer2/e/g/e$b;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    const v5, 0x7472756e

    if-ge v2, v0, :cond_2c

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/e/g/a$b;

    iget v7, v6, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    if-ne v7, v5, :cond_29

    iget-object v5, v6, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v5

    if-lez v5, :cond_29

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2c
    iput v1, p1, Lcom/applovin/exoplayer2/e/g/e$b;->At:I

    iput v1, p1, Lcom/applovin/exoplayer2/e/g/e$b;->As:I

    iput v1, p1, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    iget-object v2, p1, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    invoke-virtual {v2, v3, v4}, Lcom/applovin/exoplayer2/e/g/m;->A(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_39
    if-ge v1, v0, :cond_52

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/e/g/a$b;

    iget v6, v4, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    if-ne v6, v5, :cond_4f

    add-int/lit8 v6, v2, 0x1

    iget-object v4, v4, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {p1, v2, p2, v4, v3}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/e/g/e$b;IILcom/applovin/exoplayer2/l/y;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_52
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/e/g/a$a;Ljava/lang/String;Lcom/applovin/exoplayer2/e/g/m;)V
    .registers 20
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v4, 0x0

    :goto_9
    iget-object v7, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_44

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/applovin/exoplayer2/e/g/a$b;

    iget-object v8, v7, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    iget v7, v7, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_32

    invoke-virtual {v8, v11}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {v8}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v7

    if-ne v7, v10, :cond_41

    move-object v5, v8

    goto :goto_41

    :cond_32
    const v9, 0x73677064

    if-ne v7, v9, :cond_41

    invoke-virtual {v8, v11}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {v8}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v7

    if-ne v7, v10, :cond_41

    move-object v6, v8

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_44
    if-eqz v5, :cond_e5

    if-nez v6, :cond_4a

    goto/16 :goto_e5

    :cond_4a
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v4

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/g/a;->cf(I)I

    move-result v4

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_61

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_61
    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v4

    if-ne v4, v8, :cond_de

    invoke-virtual {v6, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/a;->cf(I)I

    move-result v0

    invoke-virtual {v6, v7}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    if-ne v0, v8, :cond_89

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_82

    goto :goto_8f

    :cond_82
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_89
    const/4 v4, 0x2

    if-lt v0, v4, :cond_8f

    invoke-virtual {v6, v7}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_8f
    :goto_8f
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_d7

    invoke-virtual {v6, v8}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    if-ne v0, v8, :cond_ae

    const/4 v10, 0x1

    goto :goto_af

    :cond_ae
    const/4 v10, 0x0

    :goto_af
    if-nez v10, :cond_b2

    return-void

    :cond_b2
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v12

    const/16 v0, 0x10

    new-array v13, v0, [B

    invoke-virtual {v6, v13, v3, v0}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    if-nez v12, :cond_c8

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {v6, v2, v3, v0}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    :cond_c8
    move-object/from16 v16, v2

    iput-boolean v8, v1, Lcom/applovin/exoplayer2/e/g/m;->Bj:Z

    new-instance v0, Lcom/applovin/exoplayer2/e/g/l;

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Lcom/applovin/exoplayer2/e/g/l;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/applovin/exoplayer2/e/g/m;->Bl:Lcom/applovin/exoplayer2/e/g/l;

    return-void

    :cond_d7
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_de
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_e5
    :goto_e5
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/g/a$b;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/e/g/a$a;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/e/g/a$a;->a(Lcom/applovin/exoplayer2/e/g/a$b;)V

    goto :goto_42

    :cond_14
    iget v0, p1, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_38

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {p1, p2, p3}, Lcom/applovin/exoplayer2/e/g/e;->c(Lcom/applovin/exoplayer2/l/y;J)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/g/e;->Ag:J

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/e/v;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/g/e;->Am:Z

    goto :goto_42

    :cond_38
    const p2, 0x656d7367

    if-ne v0, p2, :cond_42

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/e;->v(Lcom/applovin/exoplayer2/l/y;)V

    :cond_42
    :goto_42
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/e/g/l;Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget p0, p0, Lcom/applovin/exoplayer2/e/g/l;->AW:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/g/a;->cg(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_16
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v1

    iget v3, p2, Lcom/applovin/exoplayer2/e/g/m;->jA:I

    if-gt v1, v3, :cond_54

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    iget-object v0, p2, Lcom/applovin/exoplayer2/e/g/m;->Bk:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_29
    if-ge v4, v1, :cond_47

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_34

    const/4 v6, 0x1

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_3a
    if-le v0, p0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    iget-object p0, p2, Lcom/applovin/exoplayer2/e/g/m;->Bk:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_47
    iget-object p0, p2, Lcom/applovin/exoplayer2/e/g/m;->Bk:[Z

    iget p1, p2, Lcom/applovin/exoplayer2/e/g/m;->jA:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_53

    invoke-virtual {p2, v5}, Lcom/applovin/exoplayer2/e/g/m;->cq(I)V

    :cond_53
    return-void

    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Saiz sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/applovin/exoplayer2/e/g/m;->jA:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/applovin/exoplayer2/l/y;ILcom/applovin/exoplayer2/e/g/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/g/a;->cg(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5c

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v1

    if-nez v1, :cond_27

    iget-object p0, p2, Lcom/applovin/exoplayer2/e/g/m;->Bk:[Z

    iget p1, p2, Lcom/applovin/exoplayer2/e/g/m;->jA:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_27
    iget v2, p2, Lcom/applovin/exoplayer2/e/g/m;->jA:I

    if-ne v1, v2, :cond_3b

    iget-object v2, p2, Lcom/applovin/exoplayer2/e/g/m;->Bk:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/e/g/m;->cq(I)V

    invoke-virtual {p2, p0}, Lcom/applovin/exoplayer2/e/g/m;->E(Lcom/applovin/exoplayer2/l/y;)V

    return-void

    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Senc sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/applovin/exoplayer2/e/g/m;->jA:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_5c
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/g/a;->cg(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_14

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_14
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v0

    if-ne v0, v3, :cond_2f

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/g/a;->cf(I)I

    move-result v0

    iget-wide v1, p1, Lcom/applovin/exoplayer2/e/g/m;->Bb:J

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v3

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v3

    :goto_2b
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/applovin/exoplayer2/e/g/m;->Bb:J

    return-void

    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    sget-object v0, Lcom/applovin/exoplayer2/e/g/e;->zK:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_14

    return-void

    :cond_14
    invoke-static {p0, v1, p1}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/l/y;ILcom/applovin/exoplayer2/e/g/m;)V

    return-void
.end method

.method private au(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zl:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_22

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/g/e;->d(Lcom/applovin/exoplayer2/e/g/a$a;)V

    goto :goto_0

    :cond_22
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/e;->iL()V

    return-void
.end method

.method private av(J)V
    .registers 16

    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zW:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zW:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/e$a;

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e;->Ae:I

    iget v2, v0, Lcom/applovin/exoplayer2/e/g/e$a;->oW:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/e;->Ae:I

    iget-wide v1, v0, Lcom/applovin/exoplayer2/e/g/e$a;->An:J

    add-long/2addr v1, p1

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e;->zS:Lcom/applovin/exoplayer2/l/ag;

    if-eqz v3, :cond_22

    invoke-virtual {v3, v1, v2}, Lcom/applovin/exoplayer2/l/ag;->bs(J)J

    move-result-wide v1

    :cond_22
    iget-object v10, p0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_27
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    iget v7, v0, Lcom/applovin/exoplayer2/e/g/e$a;->oW:I

    iget v8, p0, Lcom/applovin/exoplayer2/e/g/e;->Ae:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    :cond_38
    return-void
.end method

.method private static b(Lcom/applovin/exoplayer2/e/g/a$a;Landroid/util/SparseArray;ZI[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/e/g/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/g/e$b;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const v0, 0x74666864

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/g/a$a;->ci(I)Lcom/applovin/exoplayer2/e/g/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0, p1, p2}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/l/y;Landroid/util/SparseArray;Z)Lcom/applovin/exoplayer2/e/g/e$b;

    move-result-object p1

    if-nez p1, :cond_16

    return-void

    :cond_16
    iget-object p2, p1, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-wide v0, p2, Lcom/applovin/exoplayer2/e/g/m;->Bo:J

    iget-boolean v2, p2, Lcom/applovin/exoplayer2/e/g/m;->Bp:Z

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/g/e$b;->iN()V

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/applovin/exoplayer2/e/g/e$b;->a(Lcom/applovin/exoplayer2/e/g/e$b;Z)Z

    const v4, 0x74666474

    invoke-virtual {p0, v4}, Lcom/applovin/exoplayer2/e/g/a$a;->ci(I)Lcom/applovin/exoplayer2/e/g/a$b;

    move-result-object v4

    if-eqz v4, :cond_3b

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_3b

    iget-object v0, v4, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/e;->y(Lcom/applovin/exoplayer2/l/y;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/g/m;->Bo:J

    iput-boolean v3, p2, Lcom/applovin/exoplayer2/e/g/m;->Bp:Z

    goto :goto_3f

    :cond_3b
    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/g/m;->Bo:J

    iput-boolean v2, p2, Lcom/applovin/exoplayer2/e/g/m;->Bp:Z

    :goto_3f
    invoke-static {p0, p1, p3}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/e/g/a$a;Lcom/applovin/exoplayer2/e/g/e$b;I)V

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object p3, p2, Lcom/applovin/exoplayer2/e/g/m;->AY:Lcom/applovin/exoplayer2/e/g/c;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/e/g/c;

    iget p3, p3, Lcom/applovin/exoplayer2/e/g/c;->zF:I

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/e/g/k;->cp(I)Lcom/applovin/exoplayer2/e/g/l;

    move-result-object p1

    const p3, 0x7361697a

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/e/g/a$a;->ci(I)Lcom/applovin/exoplayer2/e/g/a$b;

    move-result-object p3

    if-eqz p3, :cond_68

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/l;

    iget-object p3, p3, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0, p3, p2}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/e/g/l;Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;)V

    :cond_68
    const p3, 0x7361696f

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/e/g/a$a;->ci(I)Lcom/applovin/exoplayer2/e/g/a$b;

    move-result-object p3

    if-eqz p3, :cond_76

    iget-object p3, p3, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {p3, p2}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;)V

    :cond_76
    const p3, 0x73656e63

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/e/g/a$a;->ci(I)Lcom/applovin/exoplayer2/e/g/a$b;

    move-result-object p3

    if-eqz p3, :cond_84

    iget-object p3, p3, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {p3, p2}, Lcom/applovin/exoplayer2/e/g/e;->b(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;)V

    :cond_84
    if-eqz p1, :cond_89

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/l;->tc:Ljava/lang/String;

    goto :goto_8a

    :cond_89
    const/4 p1, 0x0

    :goto_8a
    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/e/g/a$a;Ljava/lang/String;Lcom/applovin/exoplayer2/e/g/m;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_94
    if-ge p3, p1, :cond_ad

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$b;

    iget v1, v0, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_aa

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0, p2, p4}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;[B)V

    :cond_aa
    add-int/lit8 p3, p3, 0x1

    goto :goto_94

    :cond_ad
    return-void
.end method

.method private static b(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/g/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/l/y;ILcom/applovin/exoplayer2/e/g/m;)V

    return-void
.end method

.method private static c(Lcom/applovin/exoplayer2/l/y;J)Landroid/util/Pair;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/y;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/applovin/exoplayer2/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/g/a;->cf(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v9

    if-nez v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v5

    goto :goto_2a

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v5

    :goto_2a
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v1

    new-array v7, v1, [I

    new-array v8, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_4c
    if-ge v11, v1, :cond_a3

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_9b

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    aput v12, v7, v11

    aput-wide v13, v8, v11

    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v3

    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_4c

    :cond_9b
    const/4 v0, 0x0

    const-string v1, "Unhandled indirect reference"

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_a3
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/applovin/exoplayer2/e/c;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lcom/applovin/exoplayer2/e/c;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static cl(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    if-ltz p0, :cond_3

    return p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static cm(I)Z
    .registers 2

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_8f

    const v0, 0x6d646864

    if-eq p0, v0, :cond_8f

    const v0, 0x6d766864

    if-eq p0, v0, :cond_8f

    const v0, 0x73696478

    if-eq p0, v0, :cond_8f

    const v0, 0x73747364

    if-eq p0, v0, :cond_8f

    const v0, 0x73747473

    if-eq p0, v0, :cond_8f

    const v0, 0x63747473

    if-eq p0, v0, :cond_8f

    const v0, 0x73747363

    if-eq p0, v0, :cond_8f

    const v0, 0x7374737a

    if-eq p0, v0, :cond_8f

    const v0, 0x73747a32

    if-eq p0, v0, :cond_8f

    const v0, 0x7374636f

    if-eq p0, v0, :cond_8f

    const v0, 0x636f3634

    if-eq p0, v0, :cond_8f

    const v0, 0x73747373

    if-eq p0, v0, :cond_8f

    const v0, 0x74666474

    if-eq p0, v0, :cond_8f

    const v0, 0x74666864

    if-eq p0, v0, :cond_8f

    const v0, 0x746b6864

    if-eq p0, v0, :cond_8f

    const v0, 0x74726578

    if-eq p0, v0, :cond_8f

    const v0, 0x7472756e

    if-eq p0, v0, :cond_8f

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_8f

    const v0, 0x7361697a

    if-eq p0, v0, :cond_8f

    const v0, 0x7361696f

    if-eq p0, v0, :cond_8f

    const v0, 0x73656e63

    if-eq p0, v0, :cond_8f

    const v0, 0x75756964

    if-eq p0, v0, :cond_8f

    const v0, 0x73626770

    if-eq p0, v0, :cond_8f

    const v0, 0x73677064

    if-eq p0, v0, :cond_8f

    const v0, 0x656c7374

    if-eq p0, v0, :cond_8f

    const v0, 0x6d656864

    if-eq p0, v0, :cond_8f

    const v0, 0x656d7367

    if-ne p0, v0, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 p0, 0x0

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 p0, 0x1

    :goto_90
    return p0
.end method

.method private static cn(I)Z
    .registers 2

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_30

    const v0, 0x7472616b

    if-eq p0, v0, :cond_30

    const v0, 0x6d646961

    if-eq p0, v0, :cond_30

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_30

    const v0, 0x7374626c

    if-eq p0, v0, :cond_30

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_30

    const v0, 0x74726166

    if-eq p0, v0, :cond_30

    const v0, 0x6d766578

    if-eq p0, v0, :cond_30

    const v0, 0x65647473

    if-ne p0, v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p0, 0x1

    :goto_31
    return p0
.end method

.method private d(Lcom/applovin/exoplayer2/e/g/a$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget v0, p1, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_b

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/e;->e(Lcom/applovin/exoplayer2/e/g/a$a;)V

    goto :goto_27

    :cond_b
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/e;->f(Lcom/applovin/exoplayer2/e/g/a$a;)V

    goto :goto_27

    :cond_14
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/g/a$a;->a(Lcom/applovin/exoplayer2/e/g/a$a;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private e(Lcom/applovin/exoplayer2/e/g/a$a;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zM:Lcom/applovin/exoplayer2/e/g/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/l/a;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p1, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/e;->i(Ljava/util/List;)Lcom/applovin/exoplayer2/d/e;

    move-result-object v7

    const v0, 0x6d766578

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/e/g/a$a;->cj(I)Lcom/applovin/exoplayer2/e/g/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v5, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-wide v8, v3

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v5, :cond_68

    iget-object v4, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/e/g/a$b;

    iget v6, v4, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v10, 0x74726578

    if-ne v6, v10, :cond_5a

    iget-object v4, v4, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/g/e;->w(Lcom/applovin/exoplayer2/l/y;)Landroid/util/Pair;

    move-result-object v4

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/applovin/exoplayer2/e/g/c;

    invoke-virtual {v11, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_65

    :cond_5a
    const v10, 0x6d656864

    if-ne v6, v10, :cond_65

    iget-object v4, v4, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/g/e;->x(Lcom/applovin/exoplayer2/l/y;)J

    move-result-wide v8

    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_68
    new-instance v4, Lcom/applovin/exoplayer2/e/r;

    invoke-direct {v4}, Lcom/applovin/exoplayer2/e/r;-><init>()V

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e;->jF:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_75

    const/4 v0, 0x1

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    const/4 v10, 0x0

    new-instance v12, Lcom/applovin/exoplayer2/e/g/o;

    invoke-direct {v12, p0}, Lcom/applovin/exoplayer2/e/g/o;-><init>(Lcom/applovin/exoplayer2/e/g/e;)V

    move-object v3, p1

    move-wide v5, v8

    move v8, v0

    move v9, v10

    move-object v10, v12

    invoke-static/range {v3 .. v10}, Lcom/applovin/exoplayer2/e/g/b;->a(Lcom/applovin/exoplayer2/e/g/a$a;Lcom/applovin/exoplayer2/e/r;JLcom/applovin/exoplayer2/d/e;ZZLcom/applovin/exoplayer2/common/base/Function;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_c8

    :goto_91
    if-ge v2, v0, :cond_c2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/e/g/n;

    iget-object v3, v1, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    new-instance v4, Lcom/applovin/exoplayer2/e/g/e$b;

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    iget v6, v3, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    invoke-interface {v5, v2, v6}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v5

    iget v6, v3, Lcom/applovin/exoplayer2/e/g/k;->zD:I

    invoke-direct {p0, v11, v6}, Lcom/applovin/exoplayer2/e/g/e;->a(Landroid/util/SparseArray;I)Lcom/applovin/exoplayer2/e/g/c;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Lcom/applovin/exoplayer2/e/g/e$b;-><init>(Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/e/g/n;Lcom/applovin/exoplayer2/e/g/c;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    iget v5, v3, Lcom/applovin/exoplayer2/e/g/k;->zD:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/e;->fH:J

    iget-wide v6, v3, Lcom/applovin/exoplayer2/e/g/k;->fH:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/g/e;->fH:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_c2
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    goto :goto_f5

    :cond_c8
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_d1

    goto :goto_d2

    :cond_d1
    const/4 v1, 0x0

    :goto_d2
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    :goto_d5
    if-ge v2, v0, :cond_f5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/e/g/n;

    iget-object v3, v1, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    iget v5, v3, Lcom/applovin/exoplayer2/e/g/k;->zD:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/e/g/e$b;

    iget v3, v3, Lcom/applovin/exoplayer2/e/g/k;->zD:I

    invoke-direct {p0, v11, v3}, Lcom/applovin/exoplayer2/e/g/e;->a(Landroid/util/SparseArray;I)Lcom/applovin/exoplayer2/e/g/c;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/applovin/exoplayer2/e/g/e$b;->a(Lcom/applovin/exoplayer2/e/g/n;Lcom/applovin/exoplayer2/e/g/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    :cond_f5
    :goto_f5
    return-void
.end method

.method private f(Lcom/applovin/exoplayer2/e/g/a$a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e;->zM:Lcom/applovin/exoplayer2/e/g/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iget v3, p0, Lcom/applovin/exoplayer2/e/g/e;->jF:I

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/g/e;->zR:[B

    invoke-static {p1, v0, v1, v3, v4}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/e/g/a$a;Landroid/util/SparseArray;ZI[B)V

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/a$a;->zm:Ljava/util/List;

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/g/e;->i(Ljava/util/List;)Lcom/applovin/exoplayer2/d/e;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_30

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/e/g/e$b;

    invoke-virtual {v3, p1}, Lcom/applovin/exoplayer2/e/g/e$b;->c(Lcom/applovin/exoplayer2/d/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_30
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Af:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_41
    if-ge v2, p1, :cond_53

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/e$b;

    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/g/e;->Af:J

    invoke-virtual {v0, v5, v6}, Lcom/applovin/exoplayer2/e/g/e$b;->aw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_53
    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/g/e;->Af:J

    :cond_55
    return-void
.end method

.method public static synthetic g()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/g/e;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method private static i(Ljava/util/List;)Lcom/applovin/exoplayer2/d/e;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/e/g/a$b;",
            ">;)",
            "Lcom/applovin/exoplayer2/d/e;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_7
    if-ge v2, v0, :cond_3e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/e/g/a$b;

    iget v5, v4, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_3b

    if-nez v3, :cond_1d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1d
    iget-object v4, v4, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/g/h;->x([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_31

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_31
    new-instance v6, Lcom/applovin/exoplayer2/d/e$a;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/applovin/exoplayer2/d/e$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3e
    if-nez v3, :cond_41

    goto :goto_46

    :cond_41
    new-instance v1, Lcom/applovin/exoplayer2/d/e;

    invoke-direct {v1, v3}, Lcom/applovin/exoplayer2/d/e;-><init>(Ljava/util/List;)V

    :goto_46
    return-object v1
.end method

.method private iL()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ab:I

    return-void
.end method

.method private iM()V
    .registers 9

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/x;

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e;->zX:Lcom/applovin/exoplayer2/e/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget v3, p0, Lcom/applovin/exoplayer2/e/g/e;->jF:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_27

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    const/16 v6, 0x65

    const/4 v7, 0x5

    invoke-interface {v5, v4, v7}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    const/16 v4, 0x65

    :cond_27
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/exoplayer2/e/x;

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v1, :cond_3f

    aget-object v5, v0, v3

    sget-object v6, Lcom/applovin/exoplayer2/e/g/e;->zL:Lcom/applovin/exoplayer2/v;

    invoke-interface {v5, v6}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3f
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/x;

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Al:[Lcom/applovin/exoplayer2/e/x;

    :goto_49
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->Al:[Lcom/applovin/exoplayer2/e/x;

    array-length v0, v0

    if-ge v2, v0, :cond_6a

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e;->zN:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/v;

    invoke-interface {v0, v3}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e;->Al:[Lcom/applovin/exoplayer2/e/x;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_49

    :cond_6a
    return-void
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/g/e;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/g/e;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private v(Lcom/applovin/exoplayer2/l/y;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    array-length v2, v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/g/a;->cf(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_74

    const/4 v5, 0x1

    if-eq v2, v5, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static/range {v5 .. v10}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move-object/from16 v20, v9

    move-wide v7, v3

    goto :goto_be

    :cond_74
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v7

    iget-wide v10, v0, Lcom/applovin/exoplayer2/e/g/e;->Ag:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_a3

    add-long/2addr v10, v7

    move-wide/from16 v16, v10

    goto :goto_a5

    :cond_a3
    move-wide/from16 v16, v3

    :goto_a5
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v10

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-object/from16 v20, v9

    move-wide/from16 v23, v10

    move-wide/from16 v13, v16

    :goto_be
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    new-instance v1, Lcom/applovin/exoplayer2/g/b/a;

    move-object/from16 v18, v1

    move-object/from16 v25, v2

    invoke-direct/range {v18 .. v25}, Lcom/applovin/exoplayer2/g/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v2, Lcom/applovin/exoplayer2/l/y;

    iget-object v5, v0, Lcom/applovin/exoplayer2/e/g/e;->zT:Lcom/applovin/exoplayer2/g/b/c;

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/g/b/c;->a(Lcom/applovin/exoplayer2/g/b/a;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v1

    iget-object v5, v0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_e8
    if-ge v10, v9, :cond_f5

    aget-object v11, v5, v10

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-interface {v11, v2, v1}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e8

    :cond_f5
    cmp-long v2, v13, v3

    if-nez v2, :cond_109

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/g/e;->zW:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/applovin/exoplayer2/e/g/e$a;

    invoke-direct {v3, v7, v8, v1}, Lcom/applovin/exoplayer2/e/g/e$a;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lcom/applovin/exoplayer2/e/g/e;->Ae:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/applovin/exoplayer2/e/g/e;->Ae:I

    goto :goto_128

    :cond_109
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/g/e;->zS:Lcom/applovin/exoplayer2/l/ag;

    if-eqz v2, :cond_111

    invoke-virtual {v2, v13, v14}, Lcom/applovin/exoplayer2/l/ag;->bs(J)J

    move-result-wide v13

    :cond_111
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/g/e;->Ak:[Lcom/applovin/exoplayer2/e/x;

    array-length v3, v2

    :goto_114
    if-ge v6, v3, :cond_128

    aget-object v15, v2, v6

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v13

    move/from16 v19, v1

    invoke-interface/range {v15 .. v21}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_114

    :cond_128
    :goto_128
    return-void
.end method

.method private static w(Lcom/applovin/exoplayer2/l/y;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/y;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/applovin/exoplayer2/e/g/c;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/applovin/exoplayer2/e/g/c;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/applovin/exoplayer2/e/g/c;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static x(Lcom/applovin/exoplayer2/l/y;)J
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/a;->cf(I)I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v0

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v0

    :goto_18
    return-wide v0
.end method

.method private static y(Lcom/applovin/exoplayer2/l/y;)J
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/a;->cf(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v0

    :goto_19
    return-wide v0
.end method


# virtual methods
.method protected a(Lcom/applovin/exoplayer2/e/g/k;)Lcom/applovin/exoplayer2/e/g/k;
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/e/g/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p1
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 14

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/e;->iL()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/e;->iM()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e;->zM:Lcom/applovin/exoplayer2/e/g/k;

    if-eqz v0, :cond_3a

    new-instance v1, Lcom/applovin/exoplayer2/e/g/e$b;

    iget v0, v0, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    new-instance v0, Lcom/applovin/exoplayer2/e/g/n;

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/g/e;->zM:Lcom/applovin/exoplayer2/e/g/k;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/applovin/exoplayer2/e/g/n;-><init>(Lcom/applovin/exoplayer2/e/g/k;[J[II[J[IJ)V

    new-instance v3, Lcom/applovin/exoplayer2/e/g/c;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/applovin/exoplayer2/e/g/c;-><init>(IIII)V

    invoke-direct {v1, p1, v0, v3}, Lcom/applovin/exoplayer2/e/g/e$b;-><init>(Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/e/g/n;Lcom/applovin/exoplayer2/e/g/c;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    :cond_3a
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/g/j;->L(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget p2, p0, Lcom/applovin/exoplayer2/e/g/e;->zY:I

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/e;->J(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_12
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/e;->I(Lcom/applovin/exoplayer2/e/i;)V

    goto :goto_0

    :cond_16
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/e;->H(Lcom/applovin/exoplayer2/e/i;)V

    goto :goto_0

    :cond_1a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/e;->G(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public o(JJ)V
    .registers 7

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_18

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e;->zO:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/e/g/e$b;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/e/g/e$b;->iN()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zW:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lcom/applovin/exoplayer2/e/g/e;->Ae:I

    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/g/e;->Af:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/e;->iL()V

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

###### Class com.applovin.exoplayer2.e.g.e.a (com.applovin.exoplayer2.e.g.e$a)
.class final Lcom/applovin/exoplayer2/e/g/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final An:J

.field public final oW:I


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/g/e$a;->An:J

    iput p3, p0, Lcom/applovin/exoplayer2/e/g/e$a;->oW:I

    return-void
.end method

###### Class com.applovin.exoplayer2.e.g.e.b (com.applovin.exoplayer2.e.g.e$b)
.class final Lcom/applovin/exoplayer2/e/g/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final Ao:Lcom/applovin/exoplayer2/e/g/m;

.field public Ap:Lcom/applovin/exoplayer2/e/g/n;

.field public Aq:Lcom/applovin/exoplayer2/e/g/c;

.field public Ar:I

.field public As:I

.field public At:I

.field public Au:I

.field private final Av:Lcom/applovin/exoplayer2/l/y;

.field private final Aw:Lcom/applovin/exoplayer2/l/y;

.field private Ax:Z

.field public final uO:Lcom/applovin/exoplayer2/l/y;

.field public final wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/e/g/n;Lcom/applovin/exoplayer2/e/g/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Aq:Lcom/applovin/exoplayer2/e/g/c;

    new-instance p1, Lcom/applovin/exoplayer2/e/g/m;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/g/m;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->uO:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Av:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Aw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p0, p2, p3}, Lcom/applovin/exoplayer2/e/g/e$b;->a(Lcom/applovin/exoplayer2/e/g/n;Lcom/applovin/exoplayer2/e/g/c;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/g/e$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/g/e$b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/g/n;Lcom/applovin/exoplayer2/e/g/c;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Aq:Lcom/applovin/exoplayer2/e/g/c;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/k;->dU:Lcom/applovin/exoplayer2/v;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/g/e$b;->iN()V

    return-void
.end method

.method public aw(J)V
    .registers 7

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    :goto_2
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget v2, v1, Lcom/applovin/exoplayer2/e/g/m;->jA:I

    if-ge v0, v2, :cond_1d

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/e/g/m;->cr(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1d

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v1, v1, Lcom/applovin/exoplayer2/e/g/m;->Bi:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1a

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Au:I

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public c(Lcom/applovin/exoplayer2/d/e;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v1, v1, Lcom/applovin/exoplayer2/e/g/m;->AY:Lcom/applovin/exoplayer2/e/g/c;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/e/g/c;

    iget v1, v1, Lcom/applovin/exoplayer2/e/g/c;->zF:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/e/g/k;->cp(I)Lcom/applovin/exoplayer2/e/g/l;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/l;->tc:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/d/e;->B(Ljava/lang/String;)Lcom/applovin/exoplayer2/d/e;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/k;->dU:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/v$a;->a(Lcom/applovin/exoplayer2/d/e;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    return-void
.end method

.method public iN()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/g/m;->Y()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->At:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->As:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Au:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    return-void
.end method

.method public iO()J
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    aget-wide v1, v0, v1

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/e/g/m;->cr(I)J

    move-result-wide v1

    :goto_15
    return-wide v1
.end method

.method public iP()J
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/n;->tS:[J

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    aget-wide v1, v0, v1

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/m;->Bd:[J

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->At:I

    aget-wide v1, v0, v1

    :goto_15
    return-wide v1
.end method

.method public iQ()I
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/n;->tR:[I

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    aget v0, v0, v1

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/m;->Bf:[I

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    aget v0, v0, v1

    :goto_15
    return v0
.end method

.method public iR()I
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/n;->zJ:[I

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    aget v0, v0, v1

    goto :goto_1a

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/m;->Bi:[Z

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/g/e$b;->iU()Lcom/applovin/exoplayer2/e/g/l;

    move-result-object v1

    if-eqz v1, :cond_23

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_23
    return v0
.end method

.method public iS()Z
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->As:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->As:I

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v3, v3, Lcom/applovin/exoplayer2/e/g/m;->Be:[I

    iget v4, p0, Lcom/applovin/exoplayer2/e/g/e$b;->At:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_21

    add-int/2addr v4, v1

    iput v4, p0, Lcom/applovin/exoplayer2/e/g/e$b;->At:I

    iput v2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->As:I

    return v2

    :cond_21
    return v1
.end method

.method public iT()V
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/g/e$b;->iU()Lcom/applovin/exoplayer2/e/g/l;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v1, v1, Lcom/applovin/exoplayer2/e/g/m;->Bm:Lcom/applovin/exoplayer2/l/y;

    iget v0, v0, Lcom/applovin/exoplayer2/e/g/l;->AW:I

    if-eqz v0, :cond_12

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget v2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/e/g/m;->cs(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_25
    return-void
.end method

.method public iU()Lcom/applovin/exoplayer2/e/g/l;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ax:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/m;->AY:Lcom/applovin/exoplayer2/e/g/c;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/c;

    iget v0, v0, Lcom/applovin/exoplayer2/e/g/c;->zF:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v2, v2, Lcom/applovin/exoplayer2/e/g/m;->Bl:Lcom/applovin/exoplayer2/e/g/l;

    if-eqz v2, :cond_19

    goto :goto_21

    :cond_19
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ap:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v2, v2, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/e/g/k;->cp(I)Lcom/applovin/exoplayer2/e/g/l;

    move-result-object v2

    :goto_21
    if-eqz v2, :cond_28

    iget-boolean v0, v2, Lcom/applovin/exoplayer2/e/g/l;->AV:Z

    if-eqz v0, :cond_28

    move-object v1, v2

    :cond_28
    return-object v1
.end method

.method public z(II)I
    .registers 13

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/g/e$b;->iU()Lcom/applovin/exoplayer2/e/g/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v2, v0, Lcom/applovin/exoplayer2/e/g/l;->AW:I

    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/m;->Bm:Lcom/applovin/exoplayer2/l/y;

    goto :goto_25

    :cond_11
    iget-object v0, v0, Lcom/applovin/exoplayer2/e/g/l;->AX:[B

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Aw:Lcom/applovin/exoplayer2/l/y;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Aw:Lcom/applovin/exoplayer2/l/y;

    array-length v0, v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_25
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget v4, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ar:I

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/e/g/m;->cs(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_35

    if-eqz p2, :cond_33

    goto :goto_35

    :cond_33
    const/4 v5, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v5, 0x1

    :goto_36
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Av:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    if-eqz v5, :cond_41

    const/16 v7, 0x80

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    or-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Av:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Av:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v6, v7, v4, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v6, v0, v2, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    if-nez v5, :cond_5b

    add-int/2addr v2, v4

    return v2

    :cond_5b
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_a4

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e$b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v3, v7}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/e$b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    aput-byte v1, v3, v1

    aput-byte v4, v3, v4

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v0

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v3, p2

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {p1, p2, v7, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    return v2

    :cond_a4
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->Ao:Lcom/applovin/exoplayer2/e/g/m;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/m;->Bm:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v3

    const/4 v8, -0x2

    invoke-virtual {p1, v8}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_dc

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/e$b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v3}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/e$b;->uO:Lcom/applovin/exoplayer2/l/y;

    :cond_dc
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/e$b;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {p2, p1, v3, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    return v2
.end method

###### Class com.applovin.exoplayer2.e.g.o (com.applovin.exoplayer2.e.g.o)
.class public final synthetic Lcom/applovin/exoplayer2/e/g/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Function;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/e/g/e;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/e/g/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/o;->a:Lcom/applovin/exoplayer2/e/g/e;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/o;->a:Lcom/applovin/exoplayer2/e/g/e;

    check-cast p1, Lcom/applovin/exoplayer2/e/g/k;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/g/e;->a(Lcom/applovin/exoplayer2/e/g/k;)Lcom/applovin/exoplayer2/e/g/k;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.e.g.p (com.applovin.exoplayer2.e.g.p)
.class public final synthetic Lcom/applovin/exoplayer2/e/g/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/e/l;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/e/g/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/e/g/p;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/g/p;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/g/p;->a:Lcom/applovin/exoplayer2/e/g/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/e/c0;->a(Lcom/applovin/exoplayer2/e/l;Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;

    move-result-object p1

    return-object p1
.end method

.method public final createExtractors()[Lcom/applovin/exoplayer2/e/h;
    .registers 2

    invoke-static {}, Lcom/applovin/exoplayer2/e/g/e;->g()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method
