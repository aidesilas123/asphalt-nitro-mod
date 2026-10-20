###### Class com.tapjoy.internal.m3 (com.tapjoy.internal.m3)
.class public final Lcom/tapjoy/internal/m3;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/c1;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/tapjoy/internal/c1;

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result p1

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v0

    iget-object p1, p1, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast p1, Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/tapjoy/internal/c1;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/n;->g(J)[B

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tapjoy/internal/c1;-><init>([B)V

    return-object v2
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/tapjoy/internal/c1;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V

    return-void
.end method
