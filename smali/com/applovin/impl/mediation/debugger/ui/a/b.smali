###### Class com.applovin.impl.mediation.debugger.ui.a.b (com.applovin.impl.mediation.debugger.ui.a.b)
.class Lcom/applovin/impl/mediation/debugger/ui/a/b;
.super Lcom/applovin/impl/mediation/debugger/ui/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/a/b$b;,
        Lcom/applovin/impl/mediation/debugger/ui/a/b$a;
    }
.end annotation


# instance fields
.field private final apU:Lcom/applovin/impl/mediation/debugger/b/a/a;

.field private final apV:Lcom/applovin/impl/mediation/debugger/b/a/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aql:Lcom/applovin/impl/mediation/debugger/b/a/b;

.field private final aqm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final aqn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final aqo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/b/a/a;Lcom/applovin/impl/mediation/debugger/b/a/b;Lcom/applovin/impl/mediation/debugger/b/a/e;Landroid/content/Context;)V
    .registers 5
    .param p2    # Lcom/applovin/impl/mediation/debugger/b/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/applovin/impl/mediation/debugger/b/a/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p4}, Lcom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apU:Lcom/applovin/impl/mediation/debugger/b/a/a;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    if-eqz p2, :cond_b

    move-object p3, p2

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/a/a;->uG()Lcom/applovin/impl/mediation/debugger/b/a/b;

    move-result-object p3

    :goto_f
    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aql:Lcom/applovin/impl/mediation/debugger/b/a/b;

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/b/a/b;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/a/a;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1c
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->vW()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqm:Ljava/util/List;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->vX()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqn:Ljava/util/List;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->vY()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqo:Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/debugger/ui/a/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->E:Landroid/content/Context;

    return-object p0
.end method

.method private vW()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->vZ()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->wa()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aql:Lcom/applovin/impl/mediation/debugger/b/a/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/a/b;->uJ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->wb()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    if-eqz v1, :cond_2e

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->wc()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-object v0
.end method

.method private vX()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uT()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aql:Lcom/applovin/impl/mediation/debugger/b/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/b/a/b;->uL()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/mediation/debugger/b/a/e;

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uR()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/b/a/c;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uR()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/mediation/debugger/b/a/c;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_23

    :cond_4a
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uS()Lcom/applovin/impl/mediation/debugger/b/a/d;

    move-result-object v3

    if-eqz v3, :cond_59

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uS()Lcom/applovin/impl/mediation/debugger/b/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/b/a/d;->mQ()Ljava/lang/String;

    move-result-object v3

    goto :goto_5b

    :cond_59
    const-string v3, ""

    :goto_5b
    new-instance v4, Lcom/applovin/impl/mediation/debugger/ui/a/b$b;

    iget-object v5, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    if-nez v5, :cond_63

    const/4 v5, 0x1

    goto :goto_64

    :cond_63
    const/4 v5, 0x0

    :goto_64
    invoke-direct {v4, p0, v2, v3, v5}, Lcom/applovin/impl/mediation/debugger/ui/a/b$b;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/b;Lcom/applovin/impl/mediation/debugger/b/a/e;Ljava/lang/String;Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_6b
    return-object v1
.end method

.method private vY()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uT()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aql:Lcom/applovin/impl/mediation/debugger/b/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/b/a/b;->uM()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/mediation/debugger/b/a/e;

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uR()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/b/a/c;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uR()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/mediation/debugger/b/a/c;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_23

    :cond_4a
    new-instance v3, Lcom/applovin/impl/mediation/debugger/ui/a/b$b;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    const/4 v6, 0x1

    if-nez v5, :cond_54

    const/4 v5, 0x1

    goto :goto_55

    :cond_54
    const/4 v5, 0x0

    :goto_55
    invoke-direct {v3, p0, v2, v4, v5}, Lcom/applovin/impl/mediation/debugger/ui/a/b$b;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/b;Lcom/applovin/impl/mediation/debugger/b/a/e;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uU()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/mediation/debugger/b/a/d;

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wW()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/b/a/d;->mQ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bO(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/b/a/d;->uQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bP(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->aG(Z)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->wX()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_8f
    return-object v1
.end method

.method private vZ()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wW()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bO(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apU:Lcom/applovin/impl/mediation/debugger/b/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/a/a;->mQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bP(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->wX()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private wa()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wW()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Ad Format"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bO(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apU:Lcom/applovin/impl/mediation/debugger/b/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/a/a;->tG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bP(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->wX()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private wb()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wW()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "AB Test Experiment Name"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bO(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->vV()Lcom/applovin/impl/mediation/debugger/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/a/b;->uJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bP(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->wX()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private wc()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wW()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Selected Network"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bO(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->apV:Lcom/applovin/impl/mediation/debugger/b/a/e;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uR()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/a/c;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bP(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->wX()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected gg(I)I
    .registers 3

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqp:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqm:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_f
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqq:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqn:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1e
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected gh(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqp:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_10

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "INFO"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_10
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqq:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_20

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "BIDDERS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_20
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "WATERFALL"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected gi(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqp:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqm:Ljava/util/List;

    return-object p1

    :cond_b
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqq:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqn:Ljava/util/List;

    return-object p1

    :cond_16
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aqo:Ljava/util/List;

    return-object p1
.end method

.method protected tM()I
    .registers 2

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqs:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public vV()Lcom/applovin/impl/mediation/debugger/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->aql:Lcom/applovin/impl/mediation/debugger/b/a/b;

    return-object v0
.end method

###### Class com.applovin.impl.mediation.debugger.ui.a.b.a (com.applovin.impl.mediation.debugger.ui.a.b$a)
.class final enum Lcom/applovin/impl/mediation/debugger/ui/a/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/mediation/debugger/ui/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aqp:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

.field public static final enum aqq:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

.field public static final enum aqr:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

.field public static final enum aqs:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

.field private static final synthetic aqt:[Lcom/applovin/impl/mediation/debugger/ui/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqp:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    const-string v3, "BIDDERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqq:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    new-instance v3, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    const-string v5, "WATERFALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqr:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    new-instance v5, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    const-string v7, "COUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqs:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqt:[Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/a/b$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/mediation/debugger/ui/a/b$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->aqt:[Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    return-object v0
.end method

###### Class com.applovin.impl.mediation.debugger.ui.a.b.C0068b (com.applovin.impl.mediation.debugger.ui.a.b$b)
.class Lcom/applovin/impl/mediation/debugger/ui/a/b$b;
.super Lcom/applovin/impl/mediation/debugger/ui/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final aqu:Lcom/applovin/impl/mediation/debugger/b/a/e;

.field final synthetic aqv:Lcom/applovin/impl/mediation/debugger/ui/a/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/b;Lcom/applovin/impl/mediation/debugger/b/a/e;Ljava/lang/String;Z)V
    .registers 7
    .param p2    # Lcom/applovin/impl/mediation/debugger/b/a/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$b;->aqv:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uR()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/b/a/c;->uP()Lcom/applovin/impl/mediation/debugger/b/c/b;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a(Lcom/applovin/impl/mediation/debugger/ui/a/b;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lcom/applovin/impl/mediation/debugger/b/c/b;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$b;->aqu:Lcom/applovin/impl/mediation/debugger/b/a/e;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/b/a/e;->uR()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/a/c;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, -0x1000000

    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asv:Landroid/text/SpannedString;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_32

    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, p3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asw:Landroid/text/SpannedString;

    iput-boolean p4, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->iV:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->iV:Z

    return v0
.end method

.method public vP()I
    .registers 2

    const v0, -0xbbbbbc

    return v0
.end method

.method public wd()Lcom/applovin/impl/mediation/debugger/b/a/e;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$b;->aqu:Lcom/applovin/impl/mediation/debugger/b/a/e;

    return-object v0
.end method
