###### Class com.tapjoy.internal.f5 (com.tapjoy.internal.f5)
.class public final Lcom/tapjoy/internal/f5;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/r5;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/tapjoy/internal/r5;

    iget-object v0, p1, Lcom/tapjoy/internal/r5;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    sget-object v2, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v2, p1, Lcom/tapjoy/internal/r5;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    sget-object v3, Lcom/tapjoy/internal/q7;->b:Lcom/tapjoy/internal/w4;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/r5;->f:Ljava/lang/String;

    if-eqz v2, :cond_2a

    sget-object v3, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/r5;->g:Ljava/lang/String;

    if-eqz v2, :cond_37

    sget-object v1, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_37
    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 13

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->d()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->g()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_80

    const/4 v9, 0x1

    if-eq v8, v9, :cond_73

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6a

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5e

    const/4 v9, 0x4

    if-eq v8, v9, :cond_51

    const/4 v9, 0x5

    if-eq v8, v9, :cond_44

    iget v9, p1, Lcom/tapjoy/internal/z7;->h:I

    invoke-static {v9}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/tapjoy/internal/q7;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_36

    new-instance v2, Lcom/tapjoy/internal/n;

    invoke-direct {v2}, Lcom/tapjoy/internal/n;-><init>()V

    new-instance v3, Lcom/tapjoy/internal/w5;

    invoke-direct {v3, v2}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V

    :cond_36
    :try_start_36
    invoke-static {v9}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v9

    invoke-virtual {v9, v3, v8, v10}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_a

    :catch_3e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_44
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v7

    iget-object v9, p1, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v9, Lcom/tapjoy/internal/n;

    invoke-virtual {v9, v7, v8}, Lcom/tapjoy/internal/n;->j(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_51
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v8

    iget-object v6, p1, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v6, Lcom/tapjoy/internal/n;

    invoke-virtual {v6, v8, v9}, Lcom/tapjoy/internal/n;->j(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_5e
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v8

    iget-object v10, p1, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v10, Lcom/tapjoy/internal/n;

    invoke-virtual {v10, v8, v9}, Lcom/tapjoy/internal/n;->j(J)Ljava/lang/String;

    goto :goto_a

    :cond_6a
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_a

    :cond_73
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v8

    iget-object v4, p1, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v4, Lcom/tapjoy/internal/n;

    invoke-virtual {v4, v8, v9}, Lcom/tapjoy/internal/n;->j(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_80
    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/z7;->c(J)V

    new-instance p1, Lcom/tapjoy/internal/r5;

    if-eqz v2, :cond_96

    invoke-virtual {v2}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/c1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/c1;-><init>([B)V

    move-object v8, v1

    goto :goto_99

    :cond_96
    sget-object v0, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    move-object v8, v0

    :goto_99
    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/tapjoy/internal/r5;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/c1;)V

    return-object p1
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/tapjoy/internal/r5;

    iget-object v0, p2, Lcom/tapjoy/internal/r5;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_c
    iget-object v0, p2, Lcom/tapjoy/internal/r5;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    sget-object v1, Lcom/tapjoy/internal/q7;->b:Lcom/tapjoy/internal/w4;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_16
    iget-object v0, p2, Lcom/tapjoy/internal/r5;->f:Ljava/lang/String;

    if-eqz v0, :cond_20

    sget-object v1, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_20
    iget-object v0, p2, Lcom/tapjoy/internal/r5;->g:Ljava/lang/String;

    if-eqz v0, :cond_2a

    sget-object v1, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_2a
    invoke-virtual {p2}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V

    return-void
.end method
