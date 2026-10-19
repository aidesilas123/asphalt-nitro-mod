###### Class com.tapjoy.internal.r (com.tapjoy.internal.r)
.class public final Lcom/tapjoy/internal/r;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/y;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/tapjoy/internal/y;

    iget-object v0, p1, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    sget-object v2, Lcom/tapjoy/internal/f;->c:Lcom/tapjoy/internal/l9;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v2, p1, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    if-eqz v2, :cond_1c

    sget-object v3, Lcom/tapjoy/internal/r5;->c:Lcom/tapjoy/internal/f5;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    if-eqz v2, :cond_29

    sget-object v1, Lcom/tapjoy/internal/p6;->c:Lcom/tapjoy/internal/e6;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_29
    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 12

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->d()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->g()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_58

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4f

    const/4 v8, 0x2

    if-eq v7, v8, :cond_46

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3d

    iget v8, p1, Lcom/tapjoy/internal/z7;->h:I

    invoke-static {v8}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/tapjoy/internal/q7;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_2f

    new-instance v2, Lcom/tapjoy/internal/n;

    invoke-direct {v2}, Lcom/tapjoy/internal/n;-><init>()V

    new-instance v6, Lcom/tapjoy/internal/w5;

    invoke-direct {v6, v2}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V

    :cond_2f
    :try_start_2f
    invoke-static {v8}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v9}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_9

    :catch_37
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3d
    sget-object v5, Lcom/tapjoy/internal/p6;->c:Lcom/tapjoy/internal/e6;

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/e6;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/p6;

    goto :goto_9

    :cond_46
    sget-object v4, Lcom/tapjoy/internal/r5;->c:Lcom/tapjoy/internal/f5;

    invoke-virtual {v4, p1}, Lcom/tapjoy/internal/f5;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/r5;

    goto :goto_9

    :cond_4f
    sget-object v3, Lcom/tapjoy/internal/f;->c:Lcom/tapjoy/internal/l9;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/l9;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/f;

    goto :goto_9

    :cond_58
    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/z7;->c(J)V

    new-instance p1, Lcom/tapjoy/internal/y;

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/c1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/c1;-><init>([B)V

    goto :goto_6f

    :cond_6d
    sget-object v1, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    :goto_6f
    invoke-direct {p1, v3, v4, v5, v1}, Lcom/tapjoy/internal/y;-><init>(Lcom/tapjoy/internal/f;Lcom/tapjoy/internal/r5;Lcom/tapjoy/internal/p6;Lcom/tapjoy/internal/c1;)V

    return-object p1
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/tapjoy/internal/y;

    iget-object v0, p2, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/tapjoy/internal/f;->c:Lcom/tapjoy/internal/l9;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_c
    iget-object v0, p2, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    if-eqz v0, :cond_16

    sget-object v1, Lcom/tapjoy/internal/r5;->c:Lcom/tapjoy/internal/f5;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_16
    iget-object v0, p2, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    if-eqz v0, :cond_20

    sget-object v1, Lcom/tapjoy/internal/p6;->c:Lcom/tapjoy/internal/e6;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_20
    invoke-virtual {p2}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V

    return-void
.end method
