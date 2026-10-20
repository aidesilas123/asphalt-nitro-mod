###### Class com.mbridge.msdk.foundation.same.report.b.d.AnonymousClass1 (com.mbridge.msdk.foundation.same.report.b.d$1)
.class final Lcom/mbridge/msdk/foundation/same/report/b/d$1;
.super Landroid/os/Handler;
.source "CrashHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/report/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/report/b/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b/d$1;->a:Lcom/mbridge/msdk/foundation/same/report/b/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_a

    goto :goto_3b

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/d$1;->a:Lcom/mbridge/msdk/foundation/same/report/b/d;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/b/d;->a(Lcom/mbridge/msdk/foundation/same/report/b/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_19

    return-void

    :cond_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Ljava/util/HashMap;

    if-eqz v1, :cond_3b

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_3b

    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/p;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;)V

    const-string v0, "crashinfo"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_3b
    :goto_3b
    return-void
.end method
