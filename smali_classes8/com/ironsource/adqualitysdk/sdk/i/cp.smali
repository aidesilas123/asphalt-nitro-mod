###### Class com.json.adqualitysdk.sdk.i.cp (com.ironsource.adqualitysdk.sdk.i.cp)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/cp;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    return-void
.end method

.method public static ﻐ(Ljava/util/List;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_44

    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_2f

    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_2f
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_44
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static ﻛ(Ljava/util/List;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static ｋ(Ljava/util/List;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/adqualitysdk/sdk/i/hl$c;"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    return-object v0
.end method

.method public static ﾇ(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_5d

    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ｋ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2d
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_45

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_45
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ｋ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_5d

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
