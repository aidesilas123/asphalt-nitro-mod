###### Class com.json.adqualitysdk.sdk.i.cw (com.ironsource.adqualitysdk.sdk.i.cw)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/cw;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    return-void
.end method

.method public static ﻐ(Ljava/util/List;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    const-class v1, Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_7a

    const/4 v7, 0x3

    if-eq v2, v7, :cond_32

    const/4 v8, 0x4

    if-eq v2, v8, :cond_19

    move-object p0, v4

    move-object v0, p0

    move-object v2, v0

    goto/16 :goto_a5

    :cond_19
    const-class v2, Ljava/lang/Class;

    invoke-static {p0, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Class;

    invoke-static {p0, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {p0, v7, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_a5

    :cond_32
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_64

    const-class v2, Ljava/lang/Class;

    invoke-static {p0, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    if-eqz v6, :cond_55

    invoke-static {p0, v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {p0, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_76

    :cond_55
    invoke-static {p0, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    move-object v0, p0

    move-object p0, v4

    move-object v4, v2

    move-object v2, v1

    goto :goto_a5

    :cond_64
    invoke-static {p0, v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {p0, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :goto_76
    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_a5

    :cond_7a
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_8c

    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    move-object v2, v4

    goto :goto_9c

    :cond_8c
    invoke-static {p0, v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_9c

    :cond_9a
    move-object v2, v1

    move-object v1, v4

    :goto_9c
    invoke-static {p0, v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    move-object v0, p0

    move-object p0, v4

    move-object v4, v1

    :goto_a5
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    invoke-static {v4, v2, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﻐ(Ljava/lang/Class;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ﻛ(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const-class v2, Ljava/lang/Class;

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﻐ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const-class v2, Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_4f

    new-instance v0, Lorg/json/JSONArray;

    const-class v2, Ljava/util/List;

    invoke-static {p0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ｋ(Ljava/lang/Object;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_6c

    const-class v0, Lorg/json/JSONArray;

    invoke-static {p0, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ｋ(Ljava/lang/Object;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6c
    invoke-static {p0, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾇ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ﾇ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/ck$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/ck$e;"
        }
    .end annotation

    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ck$e;

    invoke-direct {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ck$e;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method public static ﾒ(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_53

    const/4 v7, 0x3

    if-eq v2, v7, :cond_15

    move-object p0, v4

    move-object v0, p0

    goto/16 :goto_78

    :cond_15
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_41

    const-class v2, Ljava/lang/Class;

    invoke-static {p0, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    if-eqz v6, :cond_34

    invoke-static {p0, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    goto :goto_3e

    :cond_34
    invoke-static {p0, v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    :goto_3e
    move-object v0, v4

    move-object v4, v2

    goto :goto_78

    :cond_41
    invoke-static {p0, v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    goto :goto_78

    :cond_53
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_67

    const-class v0, Ljava/lang/Class;

    invoke-static {p0, v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    goto :goto_72

    :cond_67
    invoke-static {p0, v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v4, v2

    :cond_72
    :goto_72
    invoke-static {p0, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    :goto_78
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    invoke-static {v4, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾒ(Ljava/lang/Class;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ck;

    const/4 v2, 0x1

    invoke-static {p3, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ck;

    const/4 v2, 0x2

    invoke-static {p3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object p3

    if-eqz v1, :cond_2d

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ck;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ck;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object p1

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﻐ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hu;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ｋ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cw;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/adqualitysdk/sdk/i/hp;

    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ck;

    const/4 v2, 0x1

    invoke-static {p3, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ck;

    const/4 v2, 0x2

    invoke-static {p3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object p3

    if-eqz v1, :cond_2d

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ck;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ck;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object p1

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cw;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.cw.a (com.ironsource.adqualitysdk.sdk.i.cw$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cw$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/hr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cw;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/ck;

.field private synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private synthetic c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

.field private synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ck;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/ck;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/ck;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ck;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$a;->d:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cl;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.cw.b (com.ironsource.adqualitysdk.sdk.i.cw$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cw$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/hr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cw;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/ck;

.field private synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private synthetic c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

.field private synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ck;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/ck;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/ck;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ck;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cw$b;->d:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cl;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
