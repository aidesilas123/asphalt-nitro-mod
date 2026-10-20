###### Class com.ironsource.adqualitysdk.sdk.i.jd.b (com.ironsource.adqualitysdk.sdk.i.jd$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jd$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/jh;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/jd;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jd;Lcom/ironsource/adqualitysdk/sdk/i/jh;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-interface {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jh;->ﻛ(Landroid/view/View;)V

    goto :goto_a

    :cond_1c
    return-void
.end method
