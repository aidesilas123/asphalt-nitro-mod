###### Class com.tapjoy.w (com.tapjoy.w)
.class public Lcom/tapjoy/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/w;->n:Z

    invoke-virtual {p0, p1}, Lcom/tapjoy/w;->x(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tapjoy/w;->E(Ljava/lang/String;)V

    const-string p1, "app"

    invoke-virtual {p0, p1}, Lcom/tapjoy/w;->z(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tapjoy/w;->n:Z

    return-void
.end method

.method public B(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tapjoy/w;->l:Z

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/w;->k:Ljava/lang/String;

    return-void
.end method

.method public D()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/w;->o:Z

    return v0
.end method

.method public E(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/w;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/w;->r(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->m:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/w;->j:Z

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/w;->n:Z

    return v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/w;->l:Z

    return v0
.end method

.method public q()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/w;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/w;->w(I)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/w;->C(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tapjoy/w;->u(Z)V

    invoke-virtual {p0, v1}, Lcom/tapjoy/w;->B(Z)V

    invoke-virtual {p0, v1}, Lcom/tapjoy/w;->A(Z)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/w;->s(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tapjoy/w;->t(Z)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/w;->c:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/w;->m:Ljava/lang/String;

    return-void
.end method

.method public t(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tapjoy/w;->o:Z

    return-void
.end method

.method public u(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tapjoy/w;->j:Z

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/w;->f:Ljava/lang/String;

    return-void
.end method

.method public w(I)V
    .registers 2

    iput p1, p0, Lcom/tapjoy/w;->g:I

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/w;->a:Ljava/lang/String;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/w;->h:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/w;->i:Ljava/lang/String;

    return-void
.end method
