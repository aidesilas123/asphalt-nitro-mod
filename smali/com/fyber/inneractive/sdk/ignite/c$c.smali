###### Class com.fyber.inneractive.sdk.ignite.c.C0162c (com.fyber.inneractive.sdk.ignite.c$c)
.class public Lcom/fyber/inneractive/sdk/ignite/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ignite/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/ignite/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/ignite/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ignite/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/String;ID)V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;ID)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1, p2}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1, p2, p3}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/i;->FAILED_TO_AUTHENTICATE:Lcom/fyber/inneractive/sdk/ignite/i;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Lcom/fyber/inneractive/sdk/ignite/i;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/ignite/c;->b(Lcom/fyber/inneractive/sdk/ignite/c;Z)Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/ignite/c;->s:Lcom/fyber/inneractive/sdk/ignite/h;

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/ignite/h;->a()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/ignite/c;->s:Lcom/fyber/inneractive/sdk/ignite/h;

    :cond_1b
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1, p2, p3}, Lcom/fyber/inneractive/sdk/ignite/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Lcom/fyber/inneractive/sdk/ignite/n;->c(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ignite authenticated successfully"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/ignite/c;->g:Landroid/os/Bundle;

    const-string v2, "clientToken"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Lcom/fyber/inneractive/sdk/ignite/c;Z)Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_47

    :try_start_2a
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/String;

    aget-object p1, p1, v2

    const/16 v5, 0x8

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v5, "UTF-8"

    invoke-direct {v3, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    new-array p1, v0, [Ljava/lang/Object;

    const-string v3, "Failed to decode str"

    invoke-static {v3, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    move-object v3, v4

    :goto_48
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_88

    :try_start_4e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "exp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/fyber/inneractive/sdk/ignite/c;->m:J

    const-string p1, "Ignite session will exp in: %s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_67} :catch_81

    :try_start_67
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    aput-object v4, v1, v0

    invoke-static {p1, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_81

    goto :goto_88

    :catch_81
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "Failed to resolve expiration time"

    invoke-static {v1, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_88
    :goto_88
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/ignite/c;->b(Lcom/fyber/inneractive/sdk/ignite/c;Z)Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/ignite/c;->s:Lcom/fyber/inneractive/sdk/ignite/h;

    if-eqz p1, :cond_9b

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/ignite/h;->b()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/c$c;->a:Lcom/fyber/inneractive/sdk/ignite/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/ignite/c;->s:Lcom/fyber/inneractive/sdk/ignite/h;

    :cond_9b
    return-void
.end method
