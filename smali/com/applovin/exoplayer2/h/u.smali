###### Class com.applovin.exoplayer2.h.u (com.applovin.exoplayer2.h.u)
.class public final Lcom/applovin/exoplayer2/h/u;
.super Lcom/applovin/exoplayer2/h/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/u$a;
    }
.end annotation


# instance fields
.field private final LS:Lcom/applovin/exoplayer2/d/h;

.field private final Lc:Lcom/applovin/exoplayer2/k/i$a;

.field private final MA:Lcom/applovin/exoplayer2/h/s$a;

.field private final MB:Lcom/applovin/exoplayer2/k/v;

.field private final MC:I

.field private MD:Z

.field private ME:J

.field private MF:Z

.field private MG:Z

.field private MH:Lcom/applovin/exoplayer2/k/aa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ea:Lcom/applovin/exoplayer2/ab$f;

.field private final gL:Lcom/applovin/exoplayer2/ab;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/k/v;I)V
    .registers 8

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/a;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/ab$f;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/u;->ea:Lcom/applovin/exoplayer2/ab$f;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u;->gL:Lcom/applovin/exoplayer2/ab;

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/u;->Lc:Lcom/applovin/exoplayer2/k/i$a;

    iput-object p3, p0, Lcom/applovin/exoplayer2/h/u;->MA:Lcom/applovin/exoplayer2/h/s$a;

    iput-object p4, p0, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    iput-object p5, p0, Lcom/applovin/exoplayer2/h/u;->MB:Lcom/applovin/exoplayer2/k/v;

    iput p6, p0, Lcom/applovin/exoplayer2/h/u;->MC:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/k/v;ILcom/applovin/exoplayer2/h/u$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/applovin/exoplayer2/h/u;-><init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/k/v;I)V

    return-void
.end method

.method private ls()V
    .registers 10

    new-instance v8, Lcom/applovin/exoplayer2/h/aa;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/h/u;->MF:Z

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/h/u;->MG:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/h/u;->gL:Lcom/applovin/exoplayer2/ab;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/h/aa;-><init>(JZZZLjava/lang/Object;Lcom/applovin/exoplayer2/ab;)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/applovin/exoplayer2/h/u$1;

    invoke-direct {v0, p0, v8}, Lcom/applovin/exoplayer2/h/u$1;-><init>(Lcom/applovin/exoplayer2/h/u;Lcom/applovin/exoplayer2/ba;)V

    move-object v8, v0

    :cond_1a
    invoke-virtual {p0, v8}, Lcom/applovin/exoplayer2/h/a;->e(Lcom/applovin/exoplayer2/ba;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)Lcom/applovin/exoplayer2/h/n;
    .registers 19

    move-object v12, p0

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->Lc:Lcom/applovin/exoplayer2/k/i$a;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i$a;->of()Lcom/applovin/exoplayer2/k/i;

    move-result-object v2

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->MH:Lcom/applovin/exoplayer2/k/aa;

    if-eqz v0, :cond_e

    invoke-interface {v2, v0}, Lcom/applovin/exoplayer2/k/i;->c(Lcom/applovin/exoplayer2/k/aa;)V

    :cond_e
    new-instance v13, Lcom/applovin/exoplayer2/h/t;

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->ea:Lcom/applovin/exoplayer2/ab$f;

    iget-object v1, v0, Lcom/applovin/exoplayer2/ab$f;->ef:Landroid/net/Uri;

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->MA:Lcom/applovin/exoplayer2/h/s$a;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/s$a;->createProgressiveMediaExtractor()Lcom/applovin/exoplayer2/h/s;

    move-result-object v3

    iget-object v4, v12, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/a;->f(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/d/g$a;

    move-result-object v5

    iget-object v6, v12, Lcom/applovin/exoplayer2/h/u;->MB:Lcom/applovin/exoplayer2/k/v;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/a;->e(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/h/q$a;

    move-result-object v7

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->ea:Lcom/applovin/exoplayer2/ab$f;

    iget-object v10, v0, Lcom/applovin/exoplayer2/ab$f;->eo:Ljava/lang/String;

    iget v11, v12, Lcom/applovin/exoplayer2/h/u;->MC:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/applovin/exoplayer2/h/t;-><init>(Landroid/net/Uri;Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/h/s;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/k/v;Lcom/applovin/exoplayer2/h/q$a;Lcom/applovin/exoplayer2/h/t$b;Lcom/applovin/exoplayer2/k/b;Ljava/lang/String;I)V

    return-object v13
.end method

.method public a(JZZ)V
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    iget-wide p1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    :cond_b
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1e

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MF:Z

    if-ne v0, p3, :cond_1e

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MG:Z

    if-ne v0, p4, :cond_1e

    return-void

    :cond_1e
    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/h/u;->MF:Z

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/h/u;->MG:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/u;->ls()V

    return-void
.end method

.method protected b(Lcom/applovin/exoplayer2/k/aa;)V
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/k/aa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u;->MH:Lcom/applovin/exoplayer2/k/aa;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/d/h;->aD()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/u;->ls()V

    return-void
.end method

.method public f(Lcom/applovin/exoplayer2/h/n;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/h/t;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/t;->release()V

    return-void
.end method

.method protected kJ()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/h;->release()V

    return-void
.end method

.method public kS()V
    .registers 1

    return-void
.end method

.method public kZ()Lcom/applovin/exoplayer2/ab;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u;->gL:Lcom/applovin/exoplayer2/ab;

    return-object v0
.end method

###### Class com.applovin.exoplayer2.h.u.AnonymousClass1 (com.applovin.exoplayer2.h.u$1)
.class Lcom/applovin/exoplayer2/h/u$1;
.super Lcom/applovin/exoplayer2/h/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/h/u;->ls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic MI:Lcom/applovin/exoplayer2/h/u;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/h/u;Lcom/applovin/exoplayer2/ba;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u$1;->MI:Lcom/applovin/exoplayer2/h/u;

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/h/h;-><init>(Lcom/applovin/exoplayer2/ba;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/h;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    return-object p2
.end method

.method public a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/h/h;->a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    return-object p2
.end method

###### Class com.applovin.exoplayer2.h.u.a (com.applovin.exoplayer2.h.u$a)
.class public final Lcom/applovin/exoplayer2/h/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final Lc:Lcom/applovin/exoplayer2/k/i$a;

.field private MA:Lcom/applovin/exoplayer2/h/s$a;

.field private MC:I

.field private MJ:Lcom/applovin/exoplayer2/d/i;

.field private eo:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private er:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sm:Lcom/applovin/exoplayer2/k/v;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/i$a;)V
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/e/f;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/h/u$a;-><init>(Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/e/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/e/l;)V
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/h/m0;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/h/m0;-><init>(Lcom/applovin/exoplayer2/e/l;)V

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/h/u$a;-><init>(Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u$a;->Lc:Lcom/applovin/exoplayer2/k/i$a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/u$a;->MA:Lcom/applovin/exoplayer2/h/s$a;

    new-instance p1, Lcom/applovin/exoplayer2/d/d;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/d/d;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u$a;->MJ:Lcom/applovin/exoplayer2/d/i;

    new-instance p1, Lcom/applovin/exoplayer2/k/r;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/k/r;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u$a;->sm:Lcom/applovin/exoplayer2/k/v;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/applovin/exoplayer2/h/u$a;->MC:I

    return-void
.end method

.method private static synthetic a(Lcom/applovin/exoplayer2/e/l;)Lcom/applovin/exoplayer2/h/s;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/h/c;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/h/c;-><init>(Lcom/applovin/exoplayer2/e/l;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/applovin/exoplayer2/e/l;)Lcom/applovin/exoplayer2/h/s;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/h/u$a;->a(Lcom/applovin/exoplayer2/e/l;)Lcom/applovin/exoplayer2/h/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lcom/applovin/exoplayer2/ab;)Lcom/applovin/exoplayer2/h/u;
    .registers 10

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    iget-object v1, v0, Lcom/applovin/exoplayer2/ab$f;->er:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/u$a;->er:Ljava/lang/Object;

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iget-object v0, v0, Lcom/applovin/exoplayer2/ab$f;->eo:Ljava/lang/String;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u$a;->eo:Ljava/lang/String;

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v1, :cond_37

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ab;->bU()Lcom/applovin/exoplayer2/ab$b;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u$a;->er:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ab$b;->e(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u$a;->eo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ab$b;->o(Ljava/lang/String;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ab$b;->bV()Lcom/applovin/exoplayer2/ab;

    move-result-object p1

    goto :goto_58

    :cond_37
    if-eqz v1, :cond_48

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ab;->bU()Lcom/applovin/exoplayer2/ab$b;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u$a;->er:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ab$b;->e(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ab$b;->bV()Lcom/applovin/exoplayer2/ab;

    move-result-object p1

    goto :goto_58

    :cond_48
    if-eqz v2, :cond_58

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ab;->bU()Lcom/applovin/exoplayer2/ab$b;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u$a;->eo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ab$b;->o(Ljava/lang/String;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ab$b;->bV()Lcom/applovin/exoplayer2/ab;

    move-result-object p1

    :cond_58
    :goto_58
    move-object v1, p1

    new-instance p1, Lcom/applovin/exoplayer2/h/u;

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/u$a;->Lc:Lcom/applovin/exoplayer2/k/i$a;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/u$a;->MA:Lcom/applovin/exoplayer2/h/s$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u$a;->MJ:Lcom/applovin/exoplayer2/d/i;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/d/i;->a(Lcom/applovin/exoplayer2/ab;)Lcom/applovin/exoplayer2/d/h;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/exoplayer2/h/u$a;->sm:Lcom/applovin/exoplayer2/k/v;

    iget v6, p0, Lcom/applovin/exoplayer2/h/u$a;->MC:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/h/u;-><init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/k/v;ILcom/applovin/exoplayer2/h/u$1;)V

    return-object p1
.end method

###### Class com.applovin.exoplayer2.h.m0 (com.applovin.exoplayer2.h.m0)
.class public final synthetic Lcom/applovin/exoplayer2/h/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/h/s$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/e/l;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/e/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/m0;->a:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor()Lcom/applovin/exoplayer2/h/s;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/m0;->a:Lcom/applovin/exoplayer2/e/l;

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/u$a;->b(Lcom/applovin/exoplayer2/e/l;)Lcom/applovin/exoplayer2/h/s;

    move-result-object v0

    return-object v0
.end method
