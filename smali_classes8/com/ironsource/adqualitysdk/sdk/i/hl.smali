###### Class com.json.adqualitysdk.sdk.i.hl (com.ironsource.adqualitysdk.sdk.i.hl)
.class public Lcom/ironsource/adqualitysdk/sdk/i/hl;
.super Lcom/ironsource/adqualitysdk/sdk/i/hh;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    }
.end annotation


# instance fields
.field private l:Ljava/lang/Class;

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/hl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    return p1
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/hl;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    return p1
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    return-object p1
.end method


# virtual methods
.method protected final d()V
    .registers 2

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final ﱟ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    return v0
.end method

.method public final ﱡ()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    return-object v0
.end method

.method public final ﺙ()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public final ﻏ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    return v0
.end method

.method public final ﾒ(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    return-void
.end method
