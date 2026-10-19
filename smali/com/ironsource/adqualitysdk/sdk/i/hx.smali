###### Class com.json.adqualitysdk.sdk.i.hx (com.ironsource.adqualitysdk.sdk.i.hx)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/hz;

.field private c:Lcom/ironsource/adqualitysdk/sdk/i/if;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->d:Ljava/lang/String;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/if;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->a:Landroid/content/Context;

    invoke-direct {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/if;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->c:Lcom/ironsource/adqualitysdk/sdk/i/if;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/hz;

    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/hw;->ﻛ:[B

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ic;->ﻐ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->d:Ljava/lang/String;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hz;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->b:Lcom/ironsource/adqualitysdk/sdk/i/hz;

    return-void
.end method


# virtual methods
.method public final ﻛ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->c:Lcom/ironsource/adqualitysdk/sdk/i/if;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/if;->ｋ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_18

    if-nez v0, :cond_17

    :try_start_e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->b:Lcom/ironsource/adqualitysdk/sdk/i/hz;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->ﻛ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Lcom/ironsource/adqualitysdk/sdk/i/hz$d; {:try_start_e .. :try_end_14} :catch_15
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    goto :goto_17

    :catch_15
    :try_start_15
    const-string p1, ""
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    :cond_17
    :goto_17
    return-object p1

    :catchall_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ｋ(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->c:Lcom/ironsource/adqualitysdk/sdk/i/if;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/if;->ﻛ(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public final ﾇ(Ljava/lang/String;I)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->c:Lcom/ironsource/adqualitysdk/sdk/i/if;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/if;->ﾒ(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_13
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_38

    if-nez v3, :cond_13

    :try_start_2d
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->b:Lcom/ironsource/adqualitysdk/sdk/i/hz;

    invoke-virtual {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->ﻛ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lcom/ironsource/adqualitysdk/sdk/i/hz$d; {:try_start_2d .. :try_end_36} :catch_13
    .catchall {:try_start_2d .. :try_end_36} :catchall_38

    goto :goto_13

    :cond_37
    return-object p2

    :catchall_38
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﾇ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->b:Lcom/ironsource/adqualitysdk/sdk/i/hz;

    invoke-virtual {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->c:Lcom/ironsource/adqualitysdk/sdk/i/if;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/if;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_b

    :catchall_b
    return-void
.end method

.method public final ﾒ(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hx;->c:Lcom/ironsource/adqualitysdk/sdk/i/if;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/if;->ﻐ(Ljava/lang/String;)I

    move-result p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return p1

    :catchall_7
    const/4 p1, 0x0

    return p1
.end method
