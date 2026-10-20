###### Class com.fyber.inneractive.sdk.model.vast.r (com.fyber.inneractive.sdk.model.vast.r)
.class public Lcom/fyber/inneractive/sdk/model/vast/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/model/vast/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Lcom/fyber/inneractive/sdk/model/vast/r;
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/model/vast/r;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/model/vast/r;-><init>()V

    const-string v1, "version"

    invoke-static {p0, v1}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/model/vast/r;->a:Ljava/lang/String;

    const-string v1, "Ad"

    invoke-static {p0, v1}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/model/vast/r;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    if-nez v1, :cond_36

    const/4 v1, 0x0

    goto :goto_60

    :cond_36
    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/e;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/model/vast/e;-><init>()V

    const-string v3, "id"

    invoke-static {v1, v3}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fyber/inneractive/sdk/model/vast/e;->a:Ljava/lang/String;

    const-string v3, "Wrapper"

    invoke-static {v1, v3}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/model/vast/v;->c(Lorg/w3c/dom/Node;)Lcom/fyber/inneractive/sdk/model/vast/v;

    move-result-object v3

    iput-object v3, v2, Lcom/fyber/inneractive/sdk/model/vast/e;->b:Lcom/fyber/inneractive/sdk/model/vast/v;

    :cond_51
    const-string v3, "InLine"

    invoke-static {v1, v3}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/model/vast/m;->c(Lorg/w3c/dom/Node;)Lcom/fyber/inneractive/sdk/model/vast/m;

    move-result-object v1

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/model/vast/e;->c:Lcom/fyber/inneractive/sdk/model/vast/m;

    :cond_5f
    move-object v1, v2

    :goto_60
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/model/vast/r;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_66
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vast: version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/model/vast/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nAds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
