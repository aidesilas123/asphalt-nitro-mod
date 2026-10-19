###### Class f.a.a.a (f.a.a.a)
.class public Lf/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lf/a/a/a;->c:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lf/a/a/a;->b:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_a

    iget p1, p0, Lf/a/a/a;->c:I

    add-int/2addr v0, p1

    :cond_a
    :goto_a
    if-eqz p2, :cond_28

    iget p1, p0, Lf/a/a/a;->c:I

    if-lt v0, p1, :cond_11

    const/4 v0, 0x0

    :cond_11
    iget-object v1, p0, Lf/a/a/a;->a:[B

    iget v2, p0, Lf/a/a/a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lf/a/a/a;->b:I

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    aput-byte v0, v1, v2

    if-lt v3, p1, :cond_24

    invoke-virtual {p0}, Lf/a/a/a;->c()V

    :cond_24
    add-int/lit8 p2, p2, -0x1

    move v0, v4

    goto :goto_a

    :cond_28
    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lf/a/a/a;->a:[B

    if-eqz v0, :cond_8

    iget v0, p0, Lf/a/a/a;->c:I

    if-eq v0, p1, :cond_c

    :cond_8
    new-array v0, p1, [B

    iput-object v0, p0, Lf/a/a/a;->a:[B

    :cond_c
    iput p1, p0, Lf/a/a/a;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lf/a/a/a;->b:I

    iput p1, p0, Lf/a/a/a;->d:I

    return-void
.end method

.method public c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lf/a/a/a;->b:I

    iget v1, p0, Lf/a/a/a;->d:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v2, p0, Lf/a/a/a;->e:Ljava/io/OutputStream;

    iget-object v3, p0, Lf/a/a/a;->a:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lf/a/a/a;->b:I

    iget v1, p0, Lf/a/a/a;->c:I

    if-lt v0, v1, :cond_18

    const/4 v0, 0x0

    iput v0, p0, Lf/a/a/a;->b:I

    :cond_18
    iget v0, p0, Lf/a/a/a;->b:I

    iput v0, p0, Lf/a/a/a;->d:I

    return-void
.end method

.method public d(I)B
    .registers 3

    iget v0, p0, Lf/a/a/a;->b:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_a

    iget p1, p0, Lf/a/a/a;->c:I

    add-int/2addr v0, p1

    :cond_a
    iget-object p1, p0, Lf/a/a/a;->a:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public e(Z)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    iput p1, p0, Lf/a/a/a;->d:I

    iput p1, p0, Lf/a/a/a;->b:I

    :cond_7
    return-void
.end method

.method public f(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lf/a/a/a;->a:[B

    iget v1, p0, Lf/a/a/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lf/a/a/a;->b:I

    aput-byte p1, v0, v1

    iget p1, p0, Lf/a/a/a;->c:I

    if-lt v2, p1, :cond_11

    invoke-virtual {p0}, Lf/a/a/a;->c()V

    :cond_11
    return-void
.end method

.method public g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lf/a/a/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/a/a;->e:Ljava/io/OutputStream;

    return-void
.end method

.method public h(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lf/a/a/a;->g()V

    iput-object p1, p0, Lf/a/a/a;->e:Ljava/io/OutputStream;

    return-void
.end method
