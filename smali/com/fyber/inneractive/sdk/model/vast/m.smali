###### Class com.fyber.inneractive.sdk.model.vast.m (com.fyber.inneractive.sdk.model.vast.m)
.class public Lcom/fyber/inneractive/sdk/model/vast/m;
.super Lcom/fyber/inneractive/sdk/model/vast/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/model/vast/f;-><init>()V

    return-void
.end method

.method public static c(Lorg/w3c/dom/Node;)Lcom/fyber/inneractive/sdk/model/vast/m;
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/model/vast/m;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/model/vast/m;-><init>()V

    invoke-super {v0, p0}, Lcom/fyber/inneractive/sdk/model/vast/f;->b(Lorg/w3c/dom/Node;)V

    const-string v1, "AdTitle"

    invoke-static {p0, v1}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    const-string v1, "Description"

    invoke-static {p0, v1}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    return-object v0
.end method
