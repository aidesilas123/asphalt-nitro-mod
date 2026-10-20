###### Class com.applovin.impl.mediation.e.b (com.applovin.impl.mediation.e.b)
.class public Lcom/applovin/impl/mediation/e/b;
.super Lcom/applovin/impl/sdk/utils/i;
.source "SourceFile"


# static fields
.field private static final axg:[Ljava/lang/String;

.field private static final axh:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "ads"

    const-string v1, "settings"

    const-string v2, "auto_init_adapters"

    const-string v3, "test_mode_idfas"

    const-string v4, "test_mode_auto_init_adapters"

    const-string v5, "ad_unit_signal_providers"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/mediation/e/b;->axg:[Ljava/lang/String;

    const-string v0, "ads"

    const-string v1, "settings"

    const-string v2, "signal_providers"

    const-string v3, "ad_unit_signal_providers"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/mediation/e/b;->axh:[Ljava/lang/String;

    return-void
.end method

.method public static b(Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/c/a;->aJg:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/c/a;->aJh:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/c/a;->aJg:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V
    .registers 4

    const-string v0, "signal_providers"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lcom/applovin/impl/mediation/e/b;->axg:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->removeObjectsForKeys(Lorg/json/JSONObject;[Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/sdk/c/d;->aRK:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/applovin/impl/mediation/d/b;->p(Lorg/json/JSONObject;)V

    :cond_1d
    return-void
.end method

.method public static e(Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/c/a;->aJh:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V
    .registers 3

    const-string v0, "ad_unit_signal_providers"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Lcom/applovin/impl/mediation/d/b;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V

    :cond_b
    return-void
.end method

.method public static f(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V
    .registers 3

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "auto_init_adapters"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "test_mode_auto_init_adapters"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1e

    :cond_18
    sget-object p0, Lcom/applovin/impl/sdk/c/d;->aRL:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/n;->b(Lcom/applovin/impl/sdk/c/d;)V

    goto :goto_30

    :cond_1e
    :goto_1e
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lcom/applovin/impl/mediation/e/b;->axh:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->removeObjectsForKeys(Lorg/json/JSONObject;[Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/sdk/c/d;->aRL:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :goto_30
    return-void
.end method

.method public static z(Lorg/json/JSONObject;)V
    .registers 1

    return-void
.end method
