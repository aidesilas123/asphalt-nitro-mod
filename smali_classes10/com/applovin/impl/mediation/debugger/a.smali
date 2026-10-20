###### Class com.applovin.impl.mediation.debugger.a (com.applovin.impl.mediation.debugger.a)
.class public Lcom/applovin/impl/mediation/debugger/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/c/a$a;
.implements Lcom/applovin/impl/mediation/debugger/c/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/a$b;,
        Lcom/applovin/impl/mediation/debugger/a$a;
    }
.end annotation


# instance fields
.field private final anR:Lcom/applovin/impl/mediation/debugger/a$a;

.field private anS:Lcom/applovin/impl/mediation/debugger/b/b/a;

.field private anT:Ljava/lang/String;

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/mediation/debugger/a$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->sdk:Lcom/applovin/impl/sdk/n;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a;->anR:Lcom/applovin/impl/mediation/debugger/a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/a$b;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->anR:Lcom/applovin/impl/mediation/debugger/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/applovin/impl/mediation/debugger/a$a;->b(Lcom/applovin/impl/mediation/debugger/a$b;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/a$b;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->anR:Lcom/applovin/impl/mediation/debugger/a$a;

    invoke-interface {v0, p1, p2}, Lcom/applovin/impl/mediation/debugger/a$a;->b(Lcom/applovin/impl/mediation/debugger/a$b;Ljava/lang/String;)V

    return-void
.end method

.method public bG(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/applovin/impl/mediation/debugger/c/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-direct {v0, v1, p1, p0}, Lcom/applovin/impl/mediation/debugger/c/a;-><init>(Lcom/applovin/impl/sdk/n;Ljava/lang/String;Lcom/applovin/impl/mediation/debugger/c/a$a;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/e/q;->b(Lcom/applovin/impl/sdk/e/d;)V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_4a

    aget-object v5, p1, v4

    new-instance v6, Lcom/applovin/impl/mediation/debugger/b/b/b;

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v6, v5, v3}, Lcom/applovin/impl/mediation/debugger/b/b/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vi()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v6}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_3a

    :cond_35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_3a
    if-eqz v5, :cond_46

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_43
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_13

    :cond_4a
    new-instance p1, Lcom/applovin/impl/mediation/debugger/b/b/a;

    invoke-direct {p1, v0, v1}, Lcom/applovin/impl/mediation/debugger/b/b/a;-><init>(Ljava/util/Map;Ljava/util/List;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->anS:Lcom/applovin/impl/mediation/debugger/b/b/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a;->anT:Ljava/lang/String;

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app-ads.txt fetched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->anS:Lcom/applovin/impl/mediation/debugger/b/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppAdsTxtService"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->anR:Lcom/applovin/impl/mediation/debugger/a$a;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->anS:Lcom/applovin/impl/mediation/debugger/b/b/a;

    invoke-interface {p1, v0, p2}, Lcom/applovin/impl/mediation/debugger/a$a;->a(Lcom/applovin/impl/mediation/debugger/b/b/a;Ljava/lang/String;)V

    return-void
.end method

.method public uA()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->anS:Lcom/applovin/impl/mediation/debugger/b/b/a;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->anR:Lcom/applovin/impl/mediation/debugger/a$a;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/a;->anT:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/applovin/impl/mediation/debugger/a$a;->a(Lcom/applovin/impl/mediation/debugger/b/b/a;Ljava/lang/String;)V

    goto :goto_1c

    :cond_c
    new-instance v0, Lcom/applovin/impl/mediation/debugger/c/b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/mediation/debugger/c/b;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/mediation/debugger/c/b$a;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/e/q;->b(Lcom/applovin/impl/sdk/e/d;)V

    :goto_1c
    return-void
.end method
