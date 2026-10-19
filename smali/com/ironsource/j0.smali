###### Class com.json.j0 (com.ironsource.j0)
.class public Lcom/ironsource/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/q0;

.field private b:Lcom/ironsource/nb;

.field private c:Lcom/ironsource/mediationsdk/utils/d;

.field private d:Z

.field private e:Lcom/ironsource/l0;

.field private f:Lcom/ironsource/o0;

.field private g:Lcom/ironsource/n0;

.field private h:Lcom/ironsource/la;

.field private i:Lcom/ironsource/i0;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/q0;

    invoke-direct {v0}, Lcom/ironsource/q0;-><init>()V

    iput-object v0, p0, Lcom/ironsource/j0;->a:Lcom/ironsource/q0;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/q0;Lcom/ironsource/nb;Lcom/ironsource/mediationsdk/utils/d;ZLcom/ironsource/l0;Lcom/ironsource/o0;Lcom/ironsource/n0;Lcom/ironsource/la;Lcom/ironsource/i0;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/j0;->a:Lcom/ironsource/q0;

    iput-object p2, p0, Lcom/ironsource/j0;->b:Lcom/ironsource/nb;

    iput-object p3, p0, Lcom/ironsource/j0;->c:Lcom/ironsource/mediationsdk/utils/d;

    iput-boolean p4, p0, Lcom/ironsource/j0;->d:Z

    iput-object p5, p0, Lcom/ironsource/j0;->e:Lcom/ironsource/l0;

    iput-object p6, p0, Lcom/ironsource/j0;->f:Lcom/ironsource/o0;

    iput-object p7, p0, Lcom/ironsource/j0;->g:Lcom/ironsource/n0;

    iput-object p8, p0, Lcom/ironsource/j0;->h:Lcom/ironsource/la;

    iput-object p9, p0, Lcom/ironsource/j0;->i:Lcom/ironsource/i0;

    iput-object p10, p0, Lcom/ironsource/j0;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/ironsource/i0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->i:Lcom/ironsource/i0;

    return-object v0
.end method

.method public c()Lcom/ironsource/l0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->e:Lcom/ironsource/l0;

    return-object v0
.end method

.method public d()Lcom/ironsource/n0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->g:Lcom/ironsource/n0;

    return-object v0
.end method

.method public e()Lcom/ironsource/o0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->f:Lcom/ironsource/o0;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/j0;->d:Z

    return v0
.end method

.method public g()Lcom/ironsource/q0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->a:Lcom/ironsource/q0;

    return-object v0
.end method

.method public h()Lcom/ironsource/la;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->h:Lcom/ironsource/la;

    return-object v0
.end method

.method public i()Lcom/ironsource/nb;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->b:Lcom/ironsource/nb;

    return-object v0
.end method

.method public j()Lcom/ironsource/mediationsdk/utils/d;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j0;->c:Lcom/ironsource/mediationsdk/utils/d;

    return-object v0
.end method
