###### Class com.json.p6 (com.ironsource.p6)
.class public Lcom/ironsource/p6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ironsource/d4;
    .registers 3

    new-instance v0, Lcom/ironsource/d4$a;

    const-string v1, "endpoint"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/d4$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/d4$a;->b()Lcom/ironsource/d4$a;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ironsource/d4$a;->b(Z)Lcom/ironsource/d4$a;

    move-result-object p0

    new-instance v0, Lcom/ironsource/n6;

    invoke-direct {v0}, Lcom/ironsource/n6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ironsource/d4$a;->a(Lcom/ironsource/j5;)Lcom/ironsource/d4$a;

    move-result-object p0

    invoke-static {}, Lcom/ironsource/p6;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/d4$a;->a(Ljava/util/List;)Lcom/ironsource/d4$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/d4$a;->a(Z)Lcom/ironsource/d4$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/d4$a;->a()Lcom/ironsource/d4;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ironsource/j3;Lcom/ironsource/h6$e;)Lcom/ironsource/h6$e;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_a

    return-object p1

    :cond_a
    invoke-virtual {p0}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v0

    const-string v1, "rewarded"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    return-object p1

    :cond_17
    invoke-virtual {p0}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    sget-object p0, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    goto :goto_2c

    :cond_2a
    sget-object p0, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    :goto_2c
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/m6;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/m6;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/ironsource/m6$b;

    invoke-direct {v0}, Lcom/ironsource/m6$b;-><init>()V

    if-eqz p3, :cond_18

    const-string v1, "sessionid"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/ironsource/m6$b;->c(Ljava/lang/String;)Lcom/ironsource/m6$b;

    :cond_18
    invoke-virtual {v0, p0}, Lcom/ironsource/m6$b;->a(Landroid/content/Context;)Lcom/ironsource/m6$b;

    invoke-virtual {v0, p1}, Lcom/ironsource/m6$b;->d(Ljava/lang/String;)Lcom/ironsource/m6$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ironsource/m6$b;->b(Ljava/lang/String;)Lcom/ironsource/m6$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/m6$b;->a()Lcom/ironsource/m6;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ironsource/j3;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "inAppBidding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "charset"

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
