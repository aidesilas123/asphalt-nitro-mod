###### Class com.facebook.ads.redexgen.X.C7S (com.facebook.ads.redexgen.X.7S)
.class public Lcom/facebook/ads/redexgen/X/7S;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/7U;

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7U;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/6U;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7U;->A6G()Lcom/facebook/ads/redexgen/X/6U;

    move-result-object v0

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Y9;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7U;->A7j(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/7T;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7U;->A65(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/7T;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/7V;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7U;->A6o(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/7V;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/7X;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7U;->A7i(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/7Y;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7U;->A7y()Lcom/facebook/ads/redexgen/X/7Y;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/7j;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7U;->A6d(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/7w;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7U;->A6e(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/8N;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7U;->A7q()Lcom/facebook/ads/redexgen/X/8N;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/If;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->A5q(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/Ir;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->A7k(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0C(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
