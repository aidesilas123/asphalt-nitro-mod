###### Class com.applovin.impl.sdk.e.h (com.applovin.impl.sdk.e.h)
.class Lcom/applovin/impl/sdk/e/h;
.super Lcom/applovin/impl/sdk/e/f;
.source "SourceFile"


# instance fields
.field private final vastAd:Lcom/applovin/impl/b/a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/b/a;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 5

    const-string v0, "TaskCacheVastAd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/f;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    return-void
.end method

.method private Ku()V
    .registers 9

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kj()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Md()Z

    move-result v0

    if-eqz v0, :cond_197

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LX()Lcom/applovin/impl/b/d;

    move-result-object v0

    if-eqz v0, :cond_187

    invoke-virtual {v0}, Lcom/applovin/impl/b/d;->Mo()Lcom/applovin/impl/b/i;

    move-result-object v0

    if-eqz v0, :cond_177

    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MB()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_28
    const-string v1, ""

    :goto_2a
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_4c

    :cond_3b
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Companion ad does not have any resources attached. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a6

    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MA()Lcom/applovin/impl/b/i$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/b/i$a;->aXN:Lcom/applovin/impl/b/i$a;

    const-string v5, "..."

    const/4 v6, 0x1

    if-ne v3, v4, :cond_9e

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caching static companion ad at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/f;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {v0, v1}, Lcom/applovin/impl/b/i;->u(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/ad/e;->aN(Z)V

    goto/16 :goto_1a6

    :cond_8d
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Failed to cache static companion ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a6

    :cond_9e
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MA()Lcom/applovin/impl/b/i$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/b/i$a;->aXP:Lcom/applovin/impl/b/i$a;

    if-ne v3, v4, :cond_15f

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_cd

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin caching HTML companion ad. Fetching from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/f;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fa

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v4, "HTML fetched. Caching HTML now..."

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/b/i;->dR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/ad/e;->aN(Z)V

    goto/16 :goto_1a6

    :cond_fa
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load companion ad resources from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a6

    :cond_11a
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_138

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching provided HTML for companion ad. No fetch required. HTML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_138
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->aPJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14c

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/e/h;->dv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_14c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/b/i;->dR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/ad/e;->aN(Z)V

    goto :goto_1a6

    :cond_15f
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MA()Lcom/applovin/impl/b/i$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/b/i$a;->aXO:Lcom/applovin/impl/b/i$a;

    if-ne v0, v1, :cond_1a6

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Skip caching of iFrame resource..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a6

    :cond_177
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Failed to retrieve non-video resources from companion ad. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a6

    :cond_187
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "No companion ad provided. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a6

    :cond_197
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Companion ad caching disabled. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a6
    :goto_1a6
    return-void
.end method

.method private Kv()V
    .registers 7

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kj()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Me()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LU()Lcom/applovin/impl/b/n;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LV()Lcom/applovin/impl/b/o;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Lcom/applovin/impl/b/o;->FI()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video file successfully cached into: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    invoke-virtual {v0, v1}, Lcom/applovin/impl/b/o;->j(Landroid/net/Uri;)V

    goto :goto_84

    :cond_56
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cache video file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_75
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Video caching disabled. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

.method private Kw()V
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kj()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Mc()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin caching HTML template. Fetching from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v3}, Lcom/applovin/impl/b/a;->Mc()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Mc()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Gx()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/e/f;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_4d
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Mb()Ljava/lang/String;

    move-result-object v0

    :goto_53
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Gx()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->shouldInjectOpenMeasurementScriptDuringCaching()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v1}, Lcom/applovin/impl/b/a;->isOpenMeasurementEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cp()Lcom/applovin/impl/sdk/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/a/f;->dl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7f
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/b/a;->dO(Ljava/lang/String;)V

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish caching HTML template "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v3}, Lcom/applovin/impl/b/a;->Mb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for ad #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    :cond_b7
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Unable to load HTML template"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c6
    :goto_c6
    return-void
.end method

.method private Kx()V
    .registers 5

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Caching play & pause images..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->Ht()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "play"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/e/f;->c(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/e;->l(Landroid/net/Uri;)V

    :cond_22
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->Hu()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/e/f;->c(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/e;->m(Landroid/net/Uri;)V

    :cond_35
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad updated with playImageFilename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/e;->Ht()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", pauseImageFilename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/e;->Hu()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    return-void
.end method

.method private Kz()Lcom/applovin/impl/sdk/e/a;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Md()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "Companion ad caching disabled. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-object v1

    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LX()Lcom/applovin/impl/b/d;

    move-result-object v0

    if-nez v0, :cond_31

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "No companion ad provided. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-object v1

    :cond_31
    invoke-virtual {v0}, Lcom/applovin/impl/b/d;->Mo()Lcom/applovin/impl/b/i;

    move-result-object v0

    if-nez v0, :cond_47

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "Failed to retrieve non-video resources from companion ad. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-object v1

    :cond_47
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MB()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_54

    :cond_52
    const-string v2, ""

    :goto_54
    move-object v4, v2

    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_77

    :cond_66
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "Companion ad does not have any resources attached. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_171

    :cond_77
    :goto_77
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MA()Lcom/applovin/impl/b/i$a;

    move-result-object v3

    sget-object v5, Lcom/applovin/impl/b/i$a;->aXN:Lcom/applovin/impl/b/i$a;

    const-string v6, "..."

    if-ne v3, v5, :cond_b9

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching static companion ad at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    new-instance v1, Lcom/applovin/impl/sdk/e/c;

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/f;->aHi:Lcom/applovin/impl/sdk/d/e;

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    new-instance v10, Lcom/applovin/impl/sdk/e/h$3;

    invoke-direct {v10, p0, v0}, Lcom/applovin/impl/sdk/e/h$3;-><init>(Lcom/applovin/impl/sdk/e/h;Lcom/applovin/impl/b/i;)V

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/applovin/impl/sdk/e/c;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/e;Ljava/util/List;ZLcom/applovin/impl/sdk/d/e;Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/e/c$a;)V

    return-object v1

    :cond_b9
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MA()Lcom/applovin/impl/b/i$a;

    move-result-object v3

    sget-object v5, Lcom/applovin/impl/b/i$a;->aXP:Lcom/applovin/impl/b/i$a;

    if-ne v3, v5, :cond_15a

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12e

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin caching HTML companion ad. Fetching from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/e/f;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10f

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_101

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v4, "HTML fetched. Caching HTML now..."

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/applovin/impl/sdk/e/h$4;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/sdk/e/h$4;-><init>(Lcom/applovin/impl/sdk/e/h;Lcom/applovin/impl/b/i;)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/e/f$a;)Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    return-object v0

    :cond_10f
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load companion ad resources from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_171

    :cond_12e
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_14c

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching provided HTML for companion ad. No fetch required. HTML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/applovin/impl/sdk/e/h$5;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/sdk/e/h$5;-><init>(Lcom/applovin/impl/sdk/e/h;Lcom/applovin/impl/b/i;)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/e/f$a;)Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    return-object v0

    :cond_15a
    invoke-virtual {v0}, Lcom/applovin/impl/b/i;->MA()Lcom/applovin/impl/b/i$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/i$a;->aXO:Lcom/applovin/impl/b/i$a;

    if-ne v0, v2, :cond_171

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "Skip caching of iFrame resource..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_171
    :goto_171
    return-object v1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/h;)Lcom/applovin/impl/b/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    return-object p0
.end method

.method private dv(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aPK:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getRegexMatches(Ljava/util/regex/Matcher;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_18

    :cond_2b
    iget-object v3, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->shouldCancelHtmlCachingIfShown()Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hasShown()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Cancelling HTML JavaScript caching due to ad being shown already"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/f;->aHi:Lcom/applovin/impl/sdk/d/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/e;->JS()V

    return-object p1

    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/applovin/impl/sdk/e/f;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/ad/e;->k(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/f;->aHi:Lcom/applovin/impl/sdk/d/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d/e;->JT()V

    goto :goto_18

    :cond_6e
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to cache JavaScript resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/f;->aHi:Lcom/applovin/impl/sdk/d/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d/e;->JU()V

    goto :goto_18

    :cond_92
    return-object v1
.end method


# virtual methods
.method protected KA()Lcom/applovin/impl/sdk/e/c;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Me()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "Video caching disabled. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-object v1

    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LU()Lcom/applovin/impl/b/n;

    move-result-object v0

    if-nez v0, :cond_22

    return-object v1

    :cond_22
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LV()Lcom/applovin/impl/b/o;

    move-result-object v0

    if-nez v0, :cond_2b

    return-object v1

    :cond_2b
    invoke-virtual {v0}, Lcom/applovin/impl/b/o;->FI()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_32

    return-object v1

    :cond_32
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching video file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " creative..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/applovin/impl/sdk/e/h$6;

    invoke-direct {v4, p0, v0}, Lcom/applovin/impl/sdk/e/h$6;-><init>(Lcom/applovin/impl/sdk/e/h;Lcom/applovin/impl/b/o;)V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/e/c$a;)Lcom/applovin/impl/sdk/e/c;

    move-result-object v0

    return-object v0
.end method

.method protected KB()Lcom/applovin/impl/sdk/e/b;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Mb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Unable to load HTML template"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/4 v0, 0x0

    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->Mb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Gx()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/e/h$7;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/e/h$7;-><init>(Lcom/applovin/impl/sdk/e/h;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/e/f$a;)Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    return-object v0
.end method

.method Kn()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LO()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->IM()V

    invoke-super {p0}, Lcom/applovin/impl/sdk/e/f;->Kn()V

    return-void
.end method

.method Ko()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LO()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->IK()V

    invoke-super {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    return-void
.end method

.method protected Ky()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/e/c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Caching play & pause images..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Ht()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Ht()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/e/h$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/e/h$1;-><init>(Lcom/applovin/impl/sdk/e/h;)V

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/e/c$a;)Lcom/applovin/impl/sdk/e/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Hu()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Hu()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/e/h$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/e/h$2;-><init>(Lcom/applovin/impl/sdk/e/h;)V

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/e/c$a;)Lcom/applovin/impl/sdk/e/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    return-object v0
.end method

.method public run()V
    .registers 7

    invoke-super {p0}, Lcom/applovin/impl/sdk/e/f;->run()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->FF()Z

    move-result v0

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin caching for VAST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_22

    const-string v4, "streaming "

    goto :goto_24

    :cond_22
    const-string v4, ""

    :goto_24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ad #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/f;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aLQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kl()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ky()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LR()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ko()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kz()Lcom/applovin/impl/sdk/e/a;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KB()Lcom/applovin/impl/sdk/e/b;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KA()Lcom/applovin/impl/sdk/e/c;

    move-result-object v1

    if-eqz v1, :cond_94

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_193

    :cond_99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v2}, Lcom/applovin/impl/b/a;->LQ()Lcom/applovin/impl/b/a$b;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/b/a$b;->aWQ:Lcom/applovin/impl/b/a$b;

    if-ne v2, v3, :cond_d3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kz()Lcom/applovin/impl/sdk/e/a;

    move-result-object v2

    if-eqz v2, :cond_b6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b6
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KB()Lcom/applovin/impl/sdk/e/b;

    move-result-object v2

    if-eqz v2, :cond_bf

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bf
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ko()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KA()Lcom/applovin/impl/sdk/e/c;

    move-result-object v0

    if-eqz v0, :cond_ce

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_193

    :cond_d3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KA()Lcom/applovin/impl/sdk/e/c;

    move-result-object v2

    if-eqz v2, :cond_dc

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ko()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kz()Lcom/applovin/impl/sdk/e/a;

    move-result-object v0

    if-eqz v0, :cond_eb

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_eb
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KB()Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_f4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f4
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_193

    :cond_f9
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Km()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kx()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LR()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ko()V

    :cond_10a
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LQ()Lcom/applovin/impl/b/a$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/b/a$b;->aWQ:Lcom/applovin/impl/b/a$b;

    if-ne v0, v1, :cond_11b

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Ku()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kw()V

    goto :goto_11e

    :cond_11b
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kv()V

    :goto_11e
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LR()Z

    move-result v0

    if-nez v0, :cond_129

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ko()V

    :cond_129
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LQ()Lcom/applovin/impl/b/a$b;

    move-result-object v0

    if-ne v0, v1, :cond_135

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kv()V

    goto :goto_193

    :cond_135
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Ku()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kw()V

    goto :goto_193

    :cond_13c
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aLQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_181

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ky()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kl()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kz()Lcom/applovin/impl/sdk/e/a;

    move-result-object v1

    if-eqz v1, :cond_168

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_168
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KA()Lcom/applovin/impl/sdk/e/c;

    move-result-object v1

    if-eqz v1, :cond_171

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_171
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->KB()Lcom/applovin/impl/sdk/e/b;

    move-result-object v1

    if-eqz v1, :cond_17a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17a
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ko()V

    goto :goto_193

    :cond_181
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Km()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kx()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Ku()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kv()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->Kw()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->Ko()V

    :goto_193
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_1b7

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished caching VAST ad #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v2}, Lcom/applovin/impl/b/a;->getCreatedAtMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/n;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(JLcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/n;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->vastAd:Lcom/applovin/impl/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->FH()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ki()V

    return-void
.end method
