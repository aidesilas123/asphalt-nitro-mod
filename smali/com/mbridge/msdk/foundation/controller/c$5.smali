###### Class com.mbridge.msdk.foundation.controller.c.AnonymousClass5 (com.mbridge.msdk.foundation.controller.c$5)
.class final Lcom/mbridge/msdk/foundation/controller/c$5;
.super Landroid/os/Handler;
.source "SDKController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/controller/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/controller/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/controller/c;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/c$5;->a:Lcom/mbridge/msdk/foundation/controller/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_10c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e2

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-eq v0, v1, :cond_b4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_85

    const/4 v1, 0x6

    if-eq v0, v1, :cond_50

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1a

    goto/16 :goto_14e

    :cond_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mbridge/msdk/c/e;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->f()Lcom/mbridge/msdk/foundation/tools/d;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/tools/d;->a()Z

    move-result v1

    if-eqz v1, :cond_43

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/e;->M()I

    move-result p1

    if-ne p1, v2, :cond_43

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/c$5;->a:Lcom/mbridge/msdk/foundation/controller/c;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/controller/c;->c(Lcom/mbridge/msdk/foundation/controller/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b/d;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/report/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b/d;->a()V

    :cond_43
    if-eqz v0, :cond_14e

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/tools/d;->b()Z

    move-result p1

    if-eqz p1, :cond_14e

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/b/c;->a()V

    goto/16 :goto_14e

    :cond_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_14e

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14e

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14e

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/k;->a()Lcom/mbridge/msdk/foundation/same/report/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/k;->c()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/k;->a()Lcom/mbridge/msdk/foundation/same/report/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/k;->a(Ljava/lang/String;)V

    goto/16 :goto_14e

    :cond_73
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/p;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/c$5;->a:Lcom/mbridge/msdk/foundation/controller/c;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/controller/c;->c(Lcom/mbridge/msdk/foundation/controller/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;I)V

    const-string v1, "device_data"

    invoke-virtual {v0, v1, p1, v4, v4}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/out/Frame;)V

    goto/16 :goto_14e

    :cond_85
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14e

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/k;->a()Lcom/mbridge/msdk/foundation/same/report/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/k;->a()Lcom/mbridge/msdk/foundation/same/report/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/k;->a(Ljava/lang/String;)V

    goto/16 :goto_14e

    :cond_a2
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/p;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/c$5;->a:Lcom/mbridge/msdk/foundation/controller/c;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/controller/c;->c(Lcom/mbridge/msdk/foundation/controller/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;I)V

    const-string v1, "load_duration"

    invoke-virtual {v0, v1, p1, v4, v4}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/out/Frame;)V

    goto/16 :goto_14e

    :cond_b4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14e

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/k;->a()Lcom/mbridge/msdk/foundation/same/report/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/k;->c()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/k;->a()Lcom/mbridge/msdk/foundation/same/report/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/k;->a(Ljava/lang/String;)V

    goto/16 :goto_14e

    :cond_d1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/p;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/c$5;->a:Lcom/mbridge/msdk/foundation/controller/c;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/controller/c;->c(Lcom/mbridge/msdk/foundation/controller/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;I)V

    const-string v1, "click_duration"

    invoke-virtual {v0, v1, p1, v4, v4}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/out/Frame;)V

    goto :goto_14e

    :cond_e2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_14e

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14e

    const-string v1, "===="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_14e

    aget-object v0, v0, v3

    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/p;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/controller/c$5;->a:Lcom/mbridge/msdk/foundation/controller/c;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/controller/c;->c(Lcom/mbridge/msdk/foundation/controller/c;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_14e

    :cond_10c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_14e

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_14e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14e

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/p;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/c$5;->a:Lcom/mbridge/msdk/foundation/controller/c;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/controller/c;->c(Lcom/mbridge/msdk/foundation/controller/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;I)V

    :goto_127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_14e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/l;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v3, v5, :cond_13e

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_13e
    invoke-virtual {v0, v1, v4}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Lcom/mbridge/msdk/foundation/entity/l;Ljava/lang/Boolean;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_141} :catch_144

    add-int/lit8 v3, v3, 0x1

    goto :goto_127

    :catch_144
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKController"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    :goto_14e
    return-void
.end method
