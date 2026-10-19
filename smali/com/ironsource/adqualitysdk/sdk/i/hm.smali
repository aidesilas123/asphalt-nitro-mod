###### Class com.json.adqualitysdk.sdk.i.hm (com.ironsource.adqualitysdk.sdk.i.hm)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->a:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/reflect/Field;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->a:Ljava/util/List;

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->a:Ljava/util/List;

    return-object v0
.end method

.method final c()V
    .registers 4

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method final d()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->a:Ljava/util/List;

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    return-void
.end method

.method final e(Ljava/lang/reflect/Field;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->a:Ljava/util/List;

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
