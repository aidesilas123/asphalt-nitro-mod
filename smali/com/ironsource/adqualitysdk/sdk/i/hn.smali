###### Class com.json.adqualitysdk.sdk.i.hn (com.ironsource.adqualitysdk.sdk.i.hn)
.class public Lcom/ironsource/adqualitysdk/sdk/i/hn;
.super Lcom/ironsource/adqualitysdk/sdk/i/hh;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    }
.end annotation


# instance fields
.field private l:I

.field private m:Ljava/lang/Class;

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

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private q:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->o:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->d()V

    return-void
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/hn;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->q:I

    return p1
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/hn;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->l:I

    return p1
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/hn;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->p:Ljava/util/List;

    return-object p1
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/hn;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->n:Z

    return p1
.end method

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/hn;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/ironsource/adqualitysdk/sdk/i/hn;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->m:Ljava/lang/Class;

    return-object p1
.end method


# virtual methods
.method protected final d()V
    .registers 3

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->m:Ljava/lang/Class;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->l:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->n:Z

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->p:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->q:I

    return-void
.end method

.method public final ﭴ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->q:I

    return v0
.end method

.method public final ﮐ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->l:I

    return v0
.end method

.method public final ﱟ()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->p:Ljava/util/List;

    return-object v0
.end method

.method public final ﱡ()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->m:Ljava/lang/Class;

    return-object v0
.end method

.method public final ﺙ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->n:Z

    return v0
.end method

.method public final ﻏ()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn;->o:Ljava/util/List;

    return-object v0
.end method
