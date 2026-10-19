###### Class com.tapjoy.internal.u5 (com.tapjoy.internal.u5)
.class public final Lcom/tapjoy/internal/u5;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/r1;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/tapjoy/internal/xa;

    check-cast p1, Lcom/tapjoy/internal/r1;

    iget p1, p1, Lcom/tapjoy/internal/r1;->f:I

    invoke-static {p1}, Lcom/tapjoy/internal/w5;->a(I)I

    move-result p1

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->j()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    goto :goto_1c

    :cond_11
    sget-object v0, Lcom/tapjoy/internal/r1;->d:Lcom/tapjoy/internal/r1;

    goto :goto_1c

    :cond_14
    sget-object v0, Lcom/tapjoy/internal/r1;->c:Lcom/tapjoy/internal/r1;

    goto :goto_1c

    :cond_17
    sget-object v0, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    goto :goto_1c

    :cond_1a
    sget-object v0, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    :goto_1c
    if-eqz v0, :cond_1f

    return-object v0

    :cond_1f
    new-instance v0, Lcom/tapjoy/internal/h7;

    iget-object v1, p0, Lcom/tapjoy/internal/q7;->k:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/h7;-><init>(ILjava/lang/Class;)V

    throw v0
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/tapjoy/internal/xa;

    check-cast p2, Lcom/tapjoy/internal/r1;

    iget p2, p2, Lcom/tapjoy/internal/r1;->f:I

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->e(I)V

    return-void
.end method
