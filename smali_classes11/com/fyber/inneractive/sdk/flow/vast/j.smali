###### Class com.fyber.inneractive.sdk.flow.vast.j (com.fyber.inneractive.sdk.flow.vast.j)
.class public Lcom/fyber/inneractive/sdk/flow/vast/j;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/fyber/inneractive/sdk/measurement/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/flow/vast/k;Lcom/fyber/inneractive/sdk/response/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/response/g;->e()Lcom/fyber/inneractive/sdk/model/vast/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/model/vast/b;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/response/g;->d()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
