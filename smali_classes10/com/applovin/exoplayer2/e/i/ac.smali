###### Class com.applovin.exoplayer2.e.i.ac (com.applovin.exoplayer2.e.i.ac)
.class public final Lcom/applovin/exoplayer2/e/i/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/ac$b;,
        Lcom/applovin/exoplayer2/e/i/ac$a;
    }
.end annotation


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;


# instance fields
.field private BG:Lcom/applovin/exoplayer2/e/j;

.field private final FA:Landroid/util/SparseBooleanArray;

.field private final FB:Landroid/util/SparseBooleanArray;

.field private final FC:Lcom/applovin/exoplayer2/e/i/ab;

.field private FD:Lcom/applovin/exoplayer2/e/i/aa;

.field private FE:I

.field private FG:Z

.field private FH:Z

.field private FI:Lcom/applovin/exoplayer2/e/i/ad;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private FJ:I

.field private Fp:I

.field private final Fq:I

.field private final Fv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/l/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final Fw:Lcom/applovin/exoplayer2/l/y;

.field private final Fx:Landroid/util/SparseIntArray;

.field private final Fy:Lcom/applovin/exoplayer2/e/i/ad$c;

.field private final Fz:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/i/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final rm:I

.field private vB:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/i/b0;->a:Lcom/applovin/exoplayer2/e/i/b0;

    sput-object v0, Lcom/applovin/exoplayer2/e/i/ac;->vq:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/ac;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    const v1, 0x1b8a0

    invoke-direct {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/e/i/ac;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    new-instance v0, Lcom/applovin/exoplayer2/l/ag;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/l/ag;-><init>(J)V

    new-instance v1, Lcom/applovin/exoplayer2/e/i/g;

    invoke-direct {v1, p2}, Lcom/applovin/exoplayer2/e/i/g;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/applovin/exoplayer2/e/i/ac;-><init>(ILcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/i/ad$c;I)V

    return-void
.end method

.method public constructor <init>(ILcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/i/ad$c;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/e/i/ad$c;

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fy:Lcom/applovin/exoplayer2/e/i/ad$c;

    iput p4, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fq:I

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_21

    const/4 p3, 0x2

    if-ne p1, p3, :cond_16

    goto :goto_21

    :cond_16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fv:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_21
    :goto_21
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fv:Ljava/util/List;

    :goto_27
    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/applovin/exoplayer2/l/y;-><init>([BI)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FA:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FB:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fx:Landroid/util/SparseIntArray;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/ab;

    invoke-direct {p1, p4}, Lcom/applovin/exoplayer2/e/i/ab;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FC:Lcom/applovin/exoplayer2/e/i/ab;

    sget-object p1, Lcom/applovin/exoplayer2/e/j;->uw:Lcom/applovin/exoplayer2/e/j;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->BG:Lcom/applovin/exoplayer2/e/j;

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fp:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/ac;->jx()V

    return-void
.end method

.method private Z(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_29

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v1

    if-lez v1, :cond_24

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4, v0, v1}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v1

    if-ge v1, v3, :cond_48

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    invoke-interface {p1, v0, v1, v4}, Lcom/applovin/exoplayer2/e/i;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_41

    return v2

    :cond_41
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    goto :goto_29

    :cond_48
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/i/ac;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fp:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/i/ac;Lcom/applovin/exoplayer2/e/i/ad;)Lcom/applovin/exoplayer2/e/i/ad;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FI:Lcom/applovin/exoplayer2/e/i/ad;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/i/ac;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FG:Z

    return p1
.end method

.method private aH(J)V
    .registers 16

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->vB:Z

    if-nez v0, :cond_49

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->vB:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FC:Lcom/applovin/exoplayer2/e/i/ab;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/ab;->dd()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_39

    new-instance v0, Lcom/applovin/exoplayer2/e/i/aa;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FC:Lcom/applovin/exoplayer2/e/i/ab;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/e/i/ab;->jv()Lcom/applovin/exoplayer2/l/ag;

    move-result-object v6

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FC:Lcom/applovin/exoplayer2/e/i/ab;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/e/i/ab;->dd()J

    move-result-wide v7

    iget v11, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fp:I

    iget v12, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fq:I

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v12}, Lcom/applovin/exoplayer2/e/i/aa;-><init>(Lcom/applovin/exoplayer2/l/ag;JJII)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FD:Lcom/applovin/exoplayer2/e/i/aa;

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/a;->hS()Lcom/applovin/exoplayer2/e/v;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    goto :goto_49

    :cond_39
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->BG:Lcom/applovin/exoplayer2/e/j;

    new-instance p2, Lcom/applovin/exoplayer2/e/v$b;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FC:Lcom/applovin/exoplayer2/e/i/ab;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/ab;->dd()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    :cond_49
    :goto_49
    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/i/ac;)I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FE:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FE:I

    return v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/i/ac;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FE:I

    return p1
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/e/i/ac;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    return p0
.end method

.method private cD(I)Z
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FG:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FB:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/e/i/ac;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FE:I

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/e/i/ac;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fv:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FI:Lcom/applovin/exoplayer2/e/i/ad;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad$c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fy:Lcom/applovin/exoplayer2/e/i/ad$c;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->BG:Lcom/applovin/exoplayer2/e/j;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FA:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/ac;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/i/ac;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FB:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private jw()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/applovin/exoplayer2/e/i/ae;->i([BII)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v3, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_37

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FJ:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FJ:I

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3a

    const/16 v0, 0x178

    if-gt v1, v0, :cond_2f

    goto :goto_3a

    :cond_2f
    const/4 v0, 0x0

    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_37
    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FJ:I

    :cond_3a
    :goto_3a
    return v3
.end method

.method private jx()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FA:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fy:Lcom/applovin/exoplayer2/e/i/ad$c;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/i/ad$c;->jn()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_2a

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/e/i/ad;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2a
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/y;

    new-instance v3, Lcom/applovin/exoplayer2/e/i/ac$a;

    invoke-direct {v3, p0}, Lcom/applovin/exoplayer2/e/i/ac$a;-><init>(Lcom/applovin/exoplayer2/e/i/ac;)V

    invoke-direct {v1, v3}, Lcom/applovin/exoplayer2/e/i/y;-><init>(Lcom/applovin/exoplayer2/e/i/x;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FI:Lcom/applovin/exoplayer2/e/i/ad;

    return-void
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/e/i/ac;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FG:Z

    return p0
.end method

.method public static synthetic l()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/i/ac;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->BG:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    invoke-interface {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    const/4 v2, 0x0

    :goto_d
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2e

    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_24

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_21

    const/4 v3, 0x0

    goto :goto_25

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    const/4 v3, 0x1

    :goto_25
    if-eqz v3, :cond_2b

    invoke-interface {p1, v2}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    return v5

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2e
    return v1
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v3

    iget-boolean v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->FG:Z

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_5b

    cmp-long v5, v3, v6

    if-eqz v5, :cond_1d

    iget v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    if-eq v5, v8, :cond_1d

    const/4 v5, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_31

    iget-object v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->FC:Lcom/applovin/exoplayer2/e/i/ab;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/e/i/ab;->jt()Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/ac;->FC:Lcom/applovin/exoplayer2/e/i/ab;

    iget v4, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fp:I

    invoke-virtual {v3, v1, v2, v4}, Lcom/applovin/exoplayer2/e/i/ab;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;I)I

    move-result v1

    return v1

    :cond_31
    invoke-direct {v0, v3, v4}, Lcom/applovin/exoplayer2/e/i/ac;->aH(J)V

    iget-boolean v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->FH:Z

    if-eqz v5, :cond_4a

    iput-boolean v10, v0, Lcom/applovin/exoplayer2/e/i/ac;->FH:Z

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v11, v12, v11, v12}, Lcom/applovin/exoplayer2/e/i/ac;->o(JJ)V

    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v13

    cmp-long v5, v13, v11

    if-eqz v5, :cond_4a

    iput-wide v11, v2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return v9

    :cond_4a
    iget-object v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->FD:Lcom/applovin/exoplayer2/e/i/aa;

    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/e/a;->hT()Z

    move-result v5

    if-eqz v5, :cond_5b

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/ac;->FD:Lcom/applovin/exoplayer2/e/i/aa;

    invoke-virtual {v3, v1, v2}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result v1

    return v1

    :cond_5b
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/i/ac;->Z(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v1

    if-nez v1, :cond_63

    const/4 v1, -0x1

    return v1

    :cond_63
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/i/ac;->jw()I

    move-result v1

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v2

    if-le v1, v2, :cond_70

    return v10

    :cond_70
    iget-object v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v5

    const/high16 v11, 0x800000

    and-int/2addr v11, v5

    if-eqz v11, :cond_81

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return v10

    :cond_81
    const/high16 v11, 0x400000

    and-int/2addr v11, v5

    if-eqz v11, :cond_88

    const/4 v11, 0x1

    goto :goto_89

    :cond_88
    const/4 v11, 0x0

    :goto_89
    or-int/2addr v11, v10

    const v12, 0x1fff00

    and-int/2addr v12, v5

    shr-int/lit8 v12, v12, 0x8

    and-int/lit8 v13, v5, 0x20

    if-eqz v13, :cond_96

    const/4 v13, 0x1

    goto :goto_97

    :cond_96
    const/4 v13, 0x0

    :goto_97
    and-int/lit8 v14, v5, 0x10

    if-eqz v14, :cond_9d

    const/4 v14, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v14, 0x0

    :goto_9e
    if-eqz v14, :cond_a9

    iget-object v14, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/applovin/exoplayer2/e/i/ad;

    goto :goto_aa

    :cond_a9
    const/4 v14, 0x0

    :goto_aa
    if-nez v14, :cond_b2

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return v10

    :cond_b2
    iget v15, v0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    if-eq v15, v8, :cond_d5

    and-int/lit8 v5, v5, 0xf

    iget-object v15, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fx:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v15, v12, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fx:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v12, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v6, v5, :cond_cd

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return v10

    :cond_cd
    add-int/2addr v6, v9

    and-int/lit8 v6, v6, 0xf

    if-eq v5, v6, :cond_d5

    invoke-interface {v14}, Lcom/applovin/exoplayer2/e/i/ad;->jb()V

    :cond_d5
    if-eqz v13, :cond_f1

    iget-object v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v5

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_e9

    const/4 v6, 0x2

    goto :goto_ea

    :cond_e9
    const/4 v6, 0x0

    :goto_ea
    or-int/2addr v11, v6

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    sub-int/2addr v5, v9

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_f1
    iget-boolean v5, v0, Lcom/applovin/exoplayer2/e/i/ac;->FG:Z

    invoke-direct {v0, v12}, Lcom/applovin/exoplayer2/e/i/ac;->cD(I)Z

    move-result v6

    if-eqz v6, :cond_108

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v1}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v14, v6, v11}, Lcom/applovin/exoplayer2/e/i/ad;->p(Lcom/applovin/exoplayer2/l/y;I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v2}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    :cond_108
    iget v2, v0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    if-eq v2, v8, :cond_11a

    if-nez v5, :cond_11a

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/e/i/ac;->FG:Z

    if-eqz v2, :cond_11a

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_11a

    iput-boolean v9, v0, Lcom/applovin/exoplayer2/e/i/ac;->FH:Z

    :cond_11a
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return v10
.end method

.method public o(JJ)V
    .registers 15

    iget p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->rm:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fv:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_14
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4d

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fv:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/ag;->pU()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_2f

    const/4 v5, 0x1

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    if-nez v5, :cond_45

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/ag;->pS()J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-eqz v9, :cond_44

    cmp-long v7, v5, v2

    if-eqz v7, :cond_44

    cmp-long v2, v5, p3

    if-eqz v2, :cond_44

    const/4 v5, 0x1

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    :cond_45
    :goto_45
    if-eqz v5, :cond_4a

    invoke-virtual {v4, p3, p4}, Lcom/applovin/exoplayer2/l/ag;->aI(J)V

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4d
    cmp-long p1, p3, v2

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->FD:Lcom/applovin/exoplayer2/e/i/aa;

    if-eqz p1, :cond_58

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/e/a;->ag(J)V

    :cond_58
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fw:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fx:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    :goto_63
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_79

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/ac;->Fz:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/e/i/ad;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/e/i/ad;->jb()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_63

    :cond_79
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/ac;->FJ:I

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method
