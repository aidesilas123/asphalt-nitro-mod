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
