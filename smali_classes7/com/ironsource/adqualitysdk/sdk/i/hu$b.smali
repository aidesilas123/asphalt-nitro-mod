###### Class com.ironsource.adqualitysdk.sdk.i.hu.b (com.ironsource.adqualitysdk.sdk.i.hu$b)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hu;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;-><init>(B)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    return-void
.end method


# virtual methods
.method public final ﱡ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻐ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻐ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hi;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hi;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hu;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->b(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/hr;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hi;)Lcom/ironsource/adqualitysdk/sdk/i/hi;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/util/List;)Ljava/util/List;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->e(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->m(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object p1

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    :goto_37
    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->s(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    return-object p1
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hu;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hi;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object p1

    return-object p1
.end method

.method public final ﻛ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻛ(Ljava/lang/Object;)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->t(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final ﻛ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->p(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Z)Z

    return-object p0
.end method

.method public final ｋ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->n(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ｋ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾇ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->v(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾇ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->n(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾒ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->r(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾒ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method
