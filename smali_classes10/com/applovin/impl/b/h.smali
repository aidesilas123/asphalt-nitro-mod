###### Class com.applovin.impl.b.h (com.applovin.impl.b.h)
.class public Lcom/applovin/impl/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aXH:Ljava/lang/String;

.field private final aXI:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/b/h;->aXH:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/b/h;->aXI:Ljava/lang/String;

    return-void
.end method

.method public static b(Lcom/applovin/impl/sdk/utils/y;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/h;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_40

    if-eqz p1, :cond_38

    :try_start_4
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/y;->LJ()Ljava/util/Map;

    move-result-object v0

    const-string v1, "apiFramework"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/y;->LK()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/applovin/impl/b/h;

    invoke-direct {v1, v0, p0}, Lcom/applovin/impl/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1a

    return-object v1

    :catchall_1a
    move-exception p0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    const-string v1, "VastJavaScriptResource"

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v2, "Error occurred while initializing"

    invoke-virtual {v0, v1, v2, p0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/applovin/impl/sdk/r;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public My()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/h;->aXH:Ljava/lang/String;

    return-object v0
.end method

.method public Mz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/h;->aXI:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    :cond_12
    check-cast p1, Lcom/applovin/impl/b/h;

    iget-object v2, p0, Lcom/applovin/impl/b/h;->aXH:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/applovin/impl/b/h;->aXH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/applovin/impl/b/h;->aXH:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    :cond_26
    iget-object v2, p0, Lcom/applovin/impl/b/h;->aXI:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/b/h;->aXI:Ljava/lang/String;

    if-eqz v2, :cond_31

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_35

    :cond_31
    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0

    :cond_36
    :goto_36
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/b/h;->aXH:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/b/h;->aXI:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastJavaScriptResource{apiFramework=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/h;->aXH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", javascriptResourceUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/b/h;->aXI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
