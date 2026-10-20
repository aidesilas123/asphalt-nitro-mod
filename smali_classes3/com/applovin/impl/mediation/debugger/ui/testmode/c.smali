###### Class com.applovin.impl.mediation.debugger.ui.testmode.c (com.applovin.impl.mediation.debugger.ui.testmode.c)
.class public Lcom/applovin/impl/mediation/debugger/ui/testmode/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iV:Z

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v0, Lcom/applovin/impl/sdk/c/d;->aRO:Lcom/applovin/impl/sdk/c/d;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/n;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Lcom/applovin/impl/sdk/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/e;->X(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/e;

    move-result-object v1

    const-string v2, "applovin.sdk.is_test_environment"

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/e;->dy(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Lcom/applovin/sdk/AppLovinSdkUtils;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v1, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    :goto_2f
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->iV:Z

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->b(Lcom/applovin/impl/sdk/c/d;)V

    return-void
.end method

.method private xm()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Ch()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->iV:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->aun:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->H(Ljava/util/List;)V

    goto :goto_15

    :cond_10
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->aun:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->G(Ljava/util/List;)V

    :goto_15
    return-void
.end method


# virtual methods
.method public C(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->aun:Ljava/util/List;

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->aun:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->aun:Ljava/util/List;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->xm()V

    return-void
.end method

.method public bT(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->C(Ljava/util/List;)V

    goto :goto_12

    :cond_e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->C(Ljava/util/List;)V

    :goto_12
    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->iV:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "test_mode_idfas"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BV()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BU()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/q;->DM()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->KR()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BU()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/q;->Da()Z

    move-result v1

    goto :goto_49

    :cond_31
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BS()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/o;->Di()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->KR()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BS()Lcom/applovin/impl/sdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/o;->Da()Z

    move-result v1

    :goto_49
    if-nez v1, :cond_54

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->containsCaseInsensitiveString(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_52

    goto :goto_54

    :cond_52
    const/4 p1, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 p1, 0x1

    :goto_55
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->iV:Z

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->iV:Z

    return v0
.end method

.method public xj()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->aun:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public xk()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->aun:Ljava/util/List;

    return-object v0
.end method

.method public xl()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->aRO:Lcom/applovin/impl/sdk/c/d;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    return-void
.end method
