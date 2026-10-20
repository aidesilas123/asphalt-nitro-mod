###### Class com.applovin.exoplayer2.e.d.a (com.applovin.exoplayer2.e.d.a)
.class public final Lcom/applovin/exoplayer2/e/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# instance fields
.field private Z:I

.field private final uO:Lcom/applovin/exoplayer2/l/y;

.field private vG:Lcom/applovin/exoplayer2/e/j;

.field private wr:I

.field private ws:I

.field private wt:J

.field private wu:Lcom/applovin/exoplayer2/g/f/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private wv:Lcom/applovin/exoplayer2/e/i;

.field private ww:Lcom/applovin/exoplayer2/e/d/c;

.field private wx:Lcom/applovin/exoplayer2/e/g/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    return-void
.end method

.method private varargs a([Lcom/applovin/exoplayer2/g/a$a;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/j;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->l(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    new-instance v2, Lcom/applovin/exoplayer2/g/a;

    invoke-direct {v2, p1}, Lcom/applovin/exoplayer2/g/a;-><init>([Lcom/applovin/exoplayer2/g/a$a;)V

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->b(Lcom/applovin/exoplayer2/g/a;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    return-void
.end method

.method private static c(Ljava/lang/String;J)Lcom/applovin/exoplayer2/g/f/b;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_8

    return-object v0

    :cond_8
    invoke-static {p0}, Lcom/applovin/exoplayer2/e/d/e;->E(Ljava/lang/String;)Lcom/applovin/exoplayer2/e/d/b;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/e/d/b;->ao(J)Lcom/applovin/exoplayer2/g/f/b;

    move-result-object p0

    return-object p0
.end method

.method private iu()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/g/a$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/d/a;->wu:Lcom/applovin/exoplayer2/g/f/b;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/g/a$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/d/a;->a([Lcom/applovin/exoplayer2/g/a$a;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    return-void
.end method

.method private iv()V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/applovin/exoplayer2/g/a$a;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/d/a;->a([Lcom/applovin/exoplayer2/g/a$a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/j;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/j;->ig()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->vG:Lcom/applovin/exoplayer2/e/j;

    new-instance v1, Lcom/applovin/exoplayer2/e/v$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    return-void
.end method

.method private s(Lcom/applovin/exoplayer2/e/i;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p1

    return p1
.end method

.method private t(Lcom/applovin/exoplayer2/e/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    return-void
.end method

.method private u(Lcom/applovin/exoplayer2/e/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/e/d/a;->wr:I

    const v0, 0xffda

    if-ne p1, v0, :cond_2d

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_29

    const/4 p1, 0x4

    iput p1, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    goto :goto_3f

    :cond_29
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/d/a;->iv()V

    goto :goto_3f

    :cond_2d
    const v0, 0xffd0

    if-lt p1, v0, :cond_37

    const v0, 0xffd9

    if-le p1, v0, :cond_3f

    :cond_37
    const v0, 0xff01

    if-eq p1, v0, :cond_3f

    const/4 p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    :cond_3f
    :goto_3f
    return-void
.end method

.method private v(Lcom/applovin/exoplayer2/e/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/applovin/exoplayer2/e/d/a;->ws:I

    iput v1, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    return-void
.end method

.method private w(Lcom/applovin/exoplayer2/e/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wr:I

    const/4 v1, 0x0

    const v2, 0xffe1

    if-ne v0, v2, :cond_3f

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    iget v2, p0, Lcom/applovin/exoplayer2/e/d/a;->ws:I

    invoke-direct {v0, v2}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    iget v3, p0, Lcom/applovin/exoplayer2/e/d/a;->ws:I

    invoke-interface {p1, v2, v1, v3}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/d/a;->wu:Lcom/applovin/exoplayer2/g/f/b;

    if-nez v2, :cond_44

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/exoplayer2/e/d/a;->c(Ljava/lang/String;J)Lcom/applovin/exoplayer2/g/f/b;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->wu:Lcom/applovin/exoplayer2/g/f/b;

    if-eqz p1, :cond_44

    iget-wide v2, p1, Lcom/applovin/exoplayer2/g/f/b;->Kg:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    goto :goto_44

    :cond_3f
    iget v0, p0, Lcom/applovin/exoplayer2/e/d/a;->ws:I

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    :cond_44
    :goto_44
    iput v1, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    return-void
.end method

.method private x(Lcom/applovin/exoplayer2/e/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2, v2}, Lcom/applovin/exoplayer2/e/i;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/d/a;->iv()V

    goto :goto_4c

    :cond_12
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    if-nez v0, :cond_20

    new-instance v0, Lcom/applovin/exoplayer2/e/g/g;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/g/g;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    :cond_20
    new-instance v0, Lcom/applovin/exoplayer2/e/d/c;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/exoplayer2/e/d/c;-><init>(Lcom/applovin/exoplayer2/e/i;J)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->ww:Lcom/applovin/exoplayer2/e/d/c;

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/e/g/g;->a(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    new-instance v0, Lcom/applovin/exoplayer2/e/d/d;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/d/a;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/e/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/d/d;-><init>(JLcom/applovin/exoplayer2/e/j;)V

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/e/g/g;->a(Lcom/applovin/exoplayer2/e/j;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/d/a;->iu()V

    goto :goto_4c

    :cond_49
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/d/a;->iv()V

    :goto_4c
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->vG:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->s(Lcom/applovin/exoplayer2/e/i;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_b

    return v1

    :cond_b
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->s(Lcom/applovin/exoplayer2/e/i;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wr:I

    const v2, 0xffe0

    if-ne v0, v2, :cond_1f

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->t(Lcom/applovin/exoplayer2/e/i;)V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->s(Lcom/applovin/exoplayer2/e/i;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wr:I

    :cond_1f
    iget v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wr:I

    const v2, 0xffe1

    if-eq v0, v2, :cond_27

    return v1

    :cond_27
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_50

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p1

    if-nez p1, :cond_50

    const/4 v1, 0x1

    :cond_50
    return v1
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_58

    const/4 v3, 0x4

    if-eq v0, v3, :cond_47

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x6

    if-ne v0, p1, :cond_16

    const/4 p1, -0x1

    return p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1c
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->ww:Lcom/applovin/exoplayer2/e/d/c;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wv:Lcom/applovin/exoplayer2/e/i;

    if-eq p1, v0, :cond_2f

    :cond_24
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->wv:Lcom/applovin/exoplayer2/e/i;

    new-instance v0, Lcom/applovin/exoplayer2/e/d/c;

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    invoke-direct {v0, p1, v3, v4}, Lcom/applovin/exoplayer2/e/d/c;-><init>(Lcom/applovin/exoplayer2/e/i;J)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->ww:Lcom/applovin/exoplayer2/e/d/c;

    :cond_2f
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/g/g;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->ww:Lcom/applovin/exoplayer2/e/d/c;

    invoke-virtual {p1, v0, p2}, Lcom/applovin/exoplayer2/e/g/g;->b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result p1

    if-ne p1, v2, :cond_46

    iget-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    :cond_46
    return p1

    :cond_47
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/d/a;->wt:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_54

    iput-wide v5, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return v2

    :cond_54
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->x(Lcom/applovin/exoplayer2/e/i;)V

    return v1

    :cond_58
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->w(Lcom/applovin/exoplayer2/e/i;)V

    return v1

    :cond_5c
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->v(Lcom/applovin/exoplayer2/e/i;)V

    return v1

    :cond_60
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/d/a;->u(Lcom/applovin/exoplayer2/e/i;)V

    return v1
.end method

.method public o(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    goto :goto_1d

    :cond_d
    iget v0, p0, Lcom/applovin/exoplayer2/e/d/a;->Z:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/e/g/g;->o(JJ)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/a;->wx:Lcom/applovin/exoplayer2/e/g/g;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/g/g;->release()V

    :cond_7
    return-void
.end method
