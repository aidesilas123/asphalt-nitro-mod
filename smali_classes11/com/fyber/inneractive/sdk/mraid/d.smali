###### Class com.fyber.inneractive.sdk.mraid.d (com.fyber.inneractive.sdk.mraid.d)
.class public Lcom/fyber/inneractive/sdk/mraid/d;
.super Lcom/fyber/inneractive/sdk/mraid/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/fyber/inneractive/sdk/web/i;Lcom/fyber/inneractive/sdk/util/k0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/inneractive/sdk/web/i;",
            "Lcom/fyber/inneractive/sdk/util/k0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/mraid/a;-><init>(Ljava/util/Map;Lcom/fyber/inneractive/sdk/web/i;Lcom/fyber/inneractive/sdk/util/k0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 11

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/mraid/b;->c:Lcom/fyber/inneractive/sdk/web/i;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/mraid/b;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/i;->l()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/j;->a(Landroid/content/Intent;)Z

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_a5

    :try_start_1d
    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/i;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Long;

    if-eqz v9, :cond_52

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_34

    :cond_52
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_60

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_34

    :cond_60
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_34

    :cond_66
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_6e} :catch_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_6e} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6e} :catch_6f

    goto :goto_b4

    :catch_6f
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Failed to create calendar event."

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/fyber/inneractive/sdk/mraid/g;->CREATE_CALENDAR_EVENT:Lcom/fyber/inneractive/sdk/mraid/g;

    const-string v2, "could not create calendar event"

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V

    goto :goto_b3

    :catch_7e
    move-exception v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "invalid parameters for create calendar "

    invoke-static {v3, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/fyber/inneractive/sdk/mraid/g;->CREATE_CALENDAR_EVENT:Lcom/fyber/inneractive/sdk/mraid/g;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V

    goto :goto_b3

    :catch_96
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "There is no calendar app installed!"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/fyber/inneractive/sdk/mraid/g;->CREATE_CALENDAR_EVENT:Lcom/fyber/inneractive/sdk/mraid/g;

    const-string v2, "Action is unsupported on this device - no calendar app installed"

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V

    goto :goto_b3

    :cond_a5
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "createCalendarEvent supported for devices post-ICS"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/fyber/inneractive/sdk/mraid/g;->CREATE_CALENDAR_EVENT:Lcom/fyber/inneractive/sdk/mraid/g;

    const-string v2, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)"

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V

    :goto_b3
    const/4 v6, 0x0

    :goto_b4
    if-eqz v6, :cond_bf

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz v0, :cond_bf

    check-cast v0, Lcom/fyber/inneractive/sdk/web/i$f;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/web/i$f;->c()V

    :cond_bf
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
