###### Class com.tapjoy.internal.s (com.tapjoy.internal.s)
.class public final Lcom/tapjoy/internal/s;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/b0;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lcom/tapjoy/internal/b0;

    sget-object v0, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    iget-object v1, p1, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/tapjoy/internal/q7;->d:Lcom/tapjoy/internal/a6;

    iget-object v2, p1, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    if-eqz v0, :cond_1f

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    add-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 15

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

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v8, v9, :cond_5d

    if-eq v8, v12, :cond_50

    if-eq v8, v11, :cond_47

    if-eq v8, v10, :cond_3e

    iget v9, p1, Lcom/tapjoy/internal/z7;->h:I

    invoke-static {v9}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/tapjoy/internal/q7;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_30

    new-instance v5, Lcom/tapjoy/internal/n;

    invoke-direct {v5}, Lcom/tapjoy/internal/n;-><init>()V

    new-instance v6, Lcom/tapjoy/internal/w5;

    invoke-direct {v6, v5}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V

    :cond_30
    :try_start_30
    invoke-static {v9}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v9

    invoke-virtual {v9, v6, v8, v10}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_a

    :catch_38
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3e
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->k()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_a

    :cond_47
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->k()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_a

    :cond_50
    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v8

    iget-object v3, p1, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v3, Lcom/tapjoy/internal/n;

    invoke-virtual {v3, v8, v9}, Lcom/tapjoy/internal/n;->j(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_5d
    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/z7;->c(J)V

    if-eqz v3, :cond_7c

    if-eqz v4, :cond_7c

    new-instance p1, Lcom/tapjoy/internal/b0;

    if-eqz v5, :cond_76

    invoke-virtual {v5}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/c1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/c1;-><init>([B)V

    goto :goto_78

    :cond_76
    sget-object v1, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    :goto_78
    invoke-direct {p1, v3, v4, v7, v1}, Lcom/tapjoy/internal/b0;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/c1;)V

    return-object p1

    :cond_7c
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, p1, v0

    const-string v0, "id"

    aput-object v0, p1, v12

    aput-object v4, p1, v11

    const-string v0, "received"

    aput-object v0, p1, v10

    invoke-static {p1}, Lcom/tapjoy/internal/i3;->a([Ljava/lang/Object;)V

    throw v2
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/tapjoy/internal/b0;

    sget-object v0, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    iget-object v1, p2, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    sget-object v0, Lcom/tapjoy/internal/q7;->d:Lcom/tapjoy/internal/a6;

    iget-object v1, p2, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    iget-object v1, p2, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    if-eqz v1, :cond_1a

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    :cond_1a
    invoke-virtual {p2}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V

    return-void
.end method
