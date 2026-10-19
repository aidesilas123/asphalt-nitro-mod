###### Class com.applovin.exoplayer2.j.i (com.applovin.exoplayer2.j.i)
.class public Lcom/applovin/exoplayer2/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/j/i$a;
    }
.end annotation


# static fields
.field public static final Vd:Lcom/applovin/exoplayer2/j/i;

.field public static final Ve:Lcom/applovin/exoplayer2/j/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/j/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final VA:Z

.field public final VB:Lcom/applovin/exoplayer2/common/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/w<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final Vf:I

.field public final Vg:I

.field public final Vh:I

.field public final Vi:I

.field public final Vj:I

.field public final Vk:I

.field public final Vl:I

.field public final Vm:I

.field public final Vn:I

.field public final Vo:I

.field public final Vp:Z

.field public final Vq:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Vr:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Vs:I

.field public final Vt:I

.field public final Vu:I

.field public final Vv:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Vw:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Vx:I

.field public final Vy:Z

.field public final Vz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/i$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/i$a;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/i$a;->nm()Lcom/applovin/exoplayer2/j/i;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/j/i;->Vd:Lcom/applovin/exoplayer2/j/i;

    sput-object v0, Lcom/applovin/exoplayer2/j/i;->Ve:Lcom/applovin/exoplayer2/j/i;

    sget-object v0, Lcom/applovin/exoplayer2/j/q;->a:Lcom/applovin/exoplayer2/j/q;

    sput-object v0, Lcom/applovin/exoplayer2/j/i;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method protected constructor <init>(Lcom/applovin/exoplayer2/j/i$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->a(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vf:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->b(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vg:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->c(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vh:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->d(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vi:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->e(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vj:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->f(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vk:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->g(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vl:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->h(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vm:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->i(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vn:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->j(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vo:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->k(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->Vp:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->l(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->m(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->n(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vs:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->o(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vt:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->p(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vu:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->q(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->r(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->s(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->Vx:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->t(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->Vy:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->u(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->v(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->VA:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->w(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/w;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/i;->VB:Lcom/applovin/exoplayer2/common/a/w;

    return-void
.end method

.method private static synthetic D(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/i;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/j/i$a;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/j/i$a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/i$a;->nm()Lcom/applovin/exoplayer2/j/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/i;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/i;->D(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic eV(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/i;->t(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_b6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_b6

    :cond_13
    check-cast p1, Lcom/applovin/exoplayer2/j/i;

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vf:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vf:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vg:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vg:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vh:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vh:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vi:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vi:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vj:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vj:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vk:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vk:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vl:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vl:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vm:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vm:I

    if-ne v2, v3, :cond_b4

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->Vp:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->Vp:Z

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vn:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vn:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vo:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vo:I

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vs:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vs:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vt:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vt:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vu:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vu:I

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vx:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->Vx:I

    if-ne v2, v3, :cond_b4

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->Vy:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->Vy:Z

    if-ne v2, v3, :cond_b4

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    if-ne v2, v3, :cond_b4

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->VA:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->VA:Z

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->VB:Lcom/applovin/exoplayer2/common/a/w;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/i;->VB:Lcom/applovin/exoplayer2/common/a/w;

    invoke-virtual {v2, p1}, Lcom/applovin/exoplayer2/common/a/w;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    :goto_b5
    return v0

    :cond_b6
    :goto_b6
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/j/i;->Vf:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vg:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vh:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vi:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vj:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vk:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vl:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vm:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->Vp:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vn:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vo:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vs:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vt:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vu:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->Vx:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->Vy:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->VA:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/j/i;->VB:Lcom/applovin/exoplayer2/common/a/w;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/w;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.applovin.exoplayer2.j.i.a (com.applovin.exoplayer2.j.i$a)
.class public Lcom/applovin/exoplayer2/j/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private VA:Z

.field private VB:Lcom/applovin/exoplayer2/common/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/w<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Vf:I

.field private Vg:I

.field private Vh:I

.field private Vi:I

.field private Vj:I

.field private Vk:I

.field private Vl:I

.field private Vm:I

.field private Vn:I

.field private Vo:I

.field private Vp:Z

.field private Vq:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Vr:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Vs:I

.field private Vt:I

.field private Vu:I

.field private Vv:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Vw:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Vx:I

.field private Vy:Z

.field private Vz:Z


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vf:I

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vg:I

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vh:I

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vi:I

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vn:I

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vo:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vp:Z

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v1, 0x0

    iput v1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vs:I

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vt:I

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vu:I

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    iput v1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vx:I

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vy:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vz:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->VA:Z

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/w;->gy()Lcom/applovin/exoplayer2/common/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->VB:Lcom/applovin/exoplayer2/common/a/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/i$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;->g(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/j/i$a;->b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->Vd:Lcom/applovin/exoplayer2/j/i;

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vf:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vf:I

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vg:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vg:I

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vh:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vh:I

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vi:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vi:I

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vj:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vj:I

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vk:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vk:I

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vl:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vl:I

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vm:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vm:I

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vn:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vn:I

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/applovin/exoplayer2/j/i;->Vo:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vo:I

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lcom/applovin/exoplayer2/j/i;->Vp:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vp:Z

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/s;->b([Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i$a;->b([Ljava/lang/String;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/applovin/exoplayer2/j/i;->Vs:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vs:I

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/applovin/exoplayer2/j/i;->Vt:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vt:I

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/applovin/exoplayer2/j/i;->Vu:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vu:I

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/s;->b([Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i$a;->b([Ljava/lang/String;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/applovin/exoplayer2/j/i;->Vx:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vx:I

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/applovin/exoplayer2/j/i;->Vy:Z

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vy:Z

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vz:Z

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/j/i;->VA:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->VA:Z

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->eV(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/b/c;->d([I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/w;->e(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/w;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/i$a;->VB:Lcom/applovin/exoplayer2/common/a/w;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vf:I

    return p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vg:I

    return p0
.end method

.method private static b([Ljava/lang/String;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->gc()Lcom/applovin/exoplayer2/common/a/s$a;

    move-result-object v0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/ai;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s$a;->gd()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vh:I

    return p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vi:I

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vj:I

    return p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vk:I

    return p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vl:I

    return p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vm:I

    return p0
.end method

.method private h(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_32

    :cond_1e
    const/16 v0, 0x440

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vx:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/s;->u(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    :cond_32
    :goto_32
    return-void
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vn:I

    return p0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vo:I

    return p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/j/i$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vp:Z

    return p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vs:I

    return p0
.end method

.method static synthetic o(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vt:I

    return p0
.end method

.method static synthetic p(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vu:I

    return p0
.end method

.method static synthetic q(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic r(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic s(Lcom/applovin/exoplayer2/j/i$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vx:I

    return p0
.end method

.method static synthetic t(Lcom/applovin/exoplayer2/j/i$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vy:Z

    return p0
.end method

.method static synthetic u(Lcom/applovin/exoplayer2/j/i$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->Vz:Z

    return p0
.end method

.method static synthetic v(Lcom/applovin/exoplayer2/j/i$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->VA:Z

    return p0
.end method

.method static synthetic w(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/w;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->VB:Lcom/applovin/exoplayer2/common/a/w;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;
    .registers 4

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/exoplayer2/j/i$a;->d(IIZ)Lcom/applovin/exoplayer2/j/i$a;

    move-result-object p1

    return-object p1
.end method

.method public d(IIZ)Lcom/applovin/exoplayer2/j/i$a;
    .registers 4

    iput p1, p0, Lcom/applovin/exoplayer2/j/i$a;->Vn:I

    iput p2, p0, Lcom/applovin/exoplayer2/j/i$a;->Vo:I

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/i$a;->Vp:Z

    return-object p0
.end method

.method public g(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;->h(Landroid/content/Context;)V

    :cond_9
    return-object p0
.end method

.method public nm()Lcom/applovin/exoplayer2/j/i;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/j/i;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/j/i;-><init>(Lcom/applovin/exoplayer2/j/i$a;)V

    return-object v0
.end method

###### Class com.applovin.exoplayer2.j.q (com.applovin.exoplayer2.j.q)
.class public final synthetic Lcom/applovin/exoplayer2/j/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/q;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/q;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/q;->a:Lcom/applovin/exoplayer2/j/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/i;

    move-result-object p1

    return-object p1
.end method
