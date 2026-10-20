###### Class com.tapjoy.internal.l0 (com.tapjoy.internal.l0)
.class public final Lcom/tapjoy/internal/l0;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/s0;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/tapjoy/internal/s0;

    sget-object v0, Lcom/tapjoy/internal/b0;->c:Lcom/tapjoy/internal/s;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q7;->c()Lcom/tapjoy/internal/q7;

    move-result-object v0

    iget-object v1, p1, Lcom/tapjoy/internal/s0;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lcom/tapjoy/internal/i3;->a()Lcom/tapjoy/internal/j6;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->d()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->g()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_44

    const/4 v6, 0x1

    if-eq v5, v6, :cond_38

    iget v6, p1, Lcom/tapjoy/internal/z7;->h:I

    invoke-static {v6}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/tapjoy/internal/q7;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_2a

    new-instance v3, Lcom/tapjoy/internal/n;

    invoke-direct {v3}, Lcom/tapjoy/internal/n;-><init>()V

    new-instance v4, Lcom/tapjoy/internal/w5;

    invoke-direct {v4, v3}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V

    :cond_2a
    :try_start_2a
    invoke-static {v6}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v7}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_a

    :catch_32
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_38
    sget-object v5, Lcom/tapjoy/internal/b0;->c:Lcom/tapjoy/internal/s;

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/s;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/b0;

    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_44
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/z7;->c(J)V

    new-instance p1, Lcom/tapjoy/internal/s0;

    if-eqz v3, :cond_59

    invoke-virtual {v3}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v1

    new-instance v2, Lcom/tapjoy/internal/c1;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/c1;-><init>([B)V

    goto :goto_5b

    :cond_59
    sget-object v2, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    :goto_5b
    invoke-direct {p1, v0, v2}, Lcom/tapjoy/internal/s0;-><init>(Lcom/tapjoy/internal/j6;Lcom/tapjoy/internal/c1;)V

    return-object p1
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/tapjoy/internal/s0;

    sget-object v0, Lcom/tapjoy/internal/b0;->c:Lcom/tapjoy/internal/s;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q7;->c()Lcom/tapjoy/internal/q7;

    move-result-object v0

    iget-object v1, p2, Lcom/tapjoy/internal/s0;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V

    return-void
.end method
