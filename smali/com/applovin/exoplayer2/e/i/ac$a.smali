###### Class com.applovin.exoplayer2.e.i.ac.a (com.applovin.exoplayer2.e.i.ac$a)
.class Lcom/applovin/exoplayer2/e/i/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final FK:Lcom/applovin/exoplayer2/l/x;

.field final synthetic FL:Lcom/applovin/exoplayer2/e/i/ac;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/ac;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/applovin/exoplayer2/l/x;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FK:Lcom/applovin/exoplayer2/l/x;

    return-void
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 11

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_6a

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FK:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1, v4, v1}, Lcom/applovin/exoplayer2/l/y;->f(Lcom/applovin/exoplayer2/l/x;I)V

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FK:Lcom/applovin/exoplayer2/l/x;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FK:Lcom/applovin/exoplayer2/l/x;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_3b

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FK:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_67

    :cond_3b
    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FK:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v5}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_67

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v5}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lcom/applovin/exoplayer2/e/i/y;

    new-instance v7, Lcom/applovin/exoplayer2/e/i/ac$b;

    iget-object v8, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-direct {v7, v8, v4}, Lcom/applovin/exoplayer2/e/i/ac$b;-><init>(Lcom/applovin/exoplayer2/e/i/ac;I)V

    invoke-direct {v6, v7}, Lcom/applovin/exoplayer2/e/i/y;-><init>(Lcom/applovin/exoplayer2/e/i/x;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/i/ac;->b(Lcom/applovin/exoplayer2/e/i/ac;)I

    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_6a
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7c

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$a;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_7c
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 4

    return-void
.end method
