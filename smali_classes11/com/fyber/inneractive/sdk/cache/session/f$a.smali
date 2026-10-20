###### Class com.fyber.inneractive.sdk.cache.session.f.a (com.fyber.inneractive.sdk.cache.session.f$a)
.class public Lcom/fyber/inneractive/sdk/cache/session/f$a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/cache/session/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/fyber/inneractive/sdk/cache/session/enums/b;",
        "Lcom/fyber/inneractive/sdk/cache/session/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/cache/session/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/fyber/inneractive/sdk/cache/session/enums/b;->values()[Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    sget-object v3, Lcom/fyber/inneractive/sdk/cache/session/enums/b;->NONE:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    if-eq v2, v3, :cond_19

    new-instance v3, Lcom/fyber/inneractive/sdk/cache/session/e;

    invoke-direct {v3}, Lcom/fyber/inneractive/sdk/cache/session/e;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return-void
.end method
