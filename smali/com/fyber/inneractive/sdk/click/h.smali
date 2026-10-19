###### Class com.fyber.inneractive.sdk.click.h (com.fyber.inneractive.sdk.click.h)
.class public Lcom/fyber/inneractive/sdk/click/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/click/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/click/h;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/click/h;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)Lcom/fyber/inneractive/sdk/click/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/click/i;",
            ">;)",
            "Lcom/fyber/inneractive/sdk/click/b;"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/inneractive/sdk/util/x$c;->OPEN_EVERYTHING:Lcom/fyber/inneractive/sdk/util/x$c;

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    const-string v2, "failed"

    :goto_11
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_14
    const-string v6, "IAJavaUtil - valid url found: \'%s\' opening browser"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_a4

    :try_start_1d
    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/util/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v6, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object v7, Lcom/fyber/inneractive/sdk/util/x$d;->OPEN_IN_EXTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-direct {v6, v7, v4, v2}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_2b} :catch_60
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2d

    goto/16 :goto_b5

    :catchall_2d
    :try_start_2d
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/x;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/x;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    const/4 v6, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    if-eqz v6, :cond_51

    sget-object v6, Lcom/fyber/inneractive/sdk/util/x$c;->DO_NOT_OPEN_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$c;

    if-eq v1, v6, :cond_51

    invoke-static {p1, v0, v4}, Lcom/fyber/inneractive/sdk/util/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v6, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object p1, Lcom/fyber/inneractive/sdk/util/x$d;->OPENED_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-direct {v6, p1, v4, v2}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b5

    :cond_51
    new-instance v6, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object p1, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v1, Lcom/fyber/inneractive/sdk/util/x$b;

    const-string v7, "canOpenInExternalBrowser has decided it cant be opened and shouldUseInternalBrowser was set to true"

    invoke-direct {v1, v7}, Lcom/fyber/inneractive/sdk/util/x$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, p1, v1, v2}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_a4

    goto :goto_b5

    :catch_60
    :try_start_60
    const-string v1, "googlechrome://navigate?url=%s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_7e

    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_7e
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_83

    const/4 p1, 0x1

    goto :goto_8b

    :catchall_83
    :try_start_83
    new-array p1, v5, [Ljava/lang/Object;

    const-string v1, "Failed opening chrome for a special uri."

    invoke-static {v1, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_8b
    if-eqz p1, :cond_95

    new-instance v6, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object p1, Lcom/fyber/inneractive/sdk/util/x$d;->OPENED_USING_CHROME_NAVIGATE:Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-direct {v6, p1, v4, v2}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b5

    :cond_95
    new-instance v6, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object p1, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v1, Lcom/fyber/inneractive/sdk/util/x$b;

    const-string v7, "tryOpeningChromeGracefully has failed and couldn\'t open the url"

    invoke-direct {v1, v7}, Lcom/fyber/inneractive/sdk/util/x$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, p1, v1, v2}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_83 .. :try_end_a3} :catchall_a4

    goto :goto_b5

    :catchall_a4
    move-exception p1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v6, "IAJavaUtil - could not open a browser for url: %s"

    invoke-static {v6, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object v1, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-direct {v6, v1, p1, v2}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_b5
    if-eqz p3, :cond_d2

    iget-object p1, v6, Lcom/fyber/inneractive/sdk/util/x$a;->b:Ljava/lang/Throwable;

    if-eqz p1, :cond_c8

    new-instance v1, Lcom/fyber/inneractive/sdk/click/i;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v5, v4, p1}, Lcom/fyber/inneractive/sdk/click/i;-><init>(Ljava/lang/String;ZLcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_c8
    new-instance p1, Lcom/fyber/inneractive/sdk/click/i;

    sget-object v1, Lcom/fyber/inneractive/sdk/click/l$d;->OPENED_IN_EXTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-direct {p1, v0, v3, v1, v4}, Lcom/fyber/inneractive/sdk/click/i;-><init>(Ljava/lang/String;ZLcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d2
    :goto_d2
    sget-object p1, Lcom/fyber/inneractive/sdk/click/l$d;->OPENED_IN_EXTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FyberNativeBrowser"

    invoke-static {p2, p1, p3}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/click/l;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fybernativebrowser"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/h;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/click/h;->b:Z

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method
