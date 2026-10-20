###### Class com.mbridge.msdk.foundation.same.report.p.AnonymousClass12.AnonymousClass1 (com.mbridge.msdk.foundation.same.report.p$12$1)
.class final Lcom/mbridge/msdk/foundation/same/report/p$12$1;
.super Ljava/lang/Object;
.source "ReportController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/report/p$12;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/report/p$12;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/p$12;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/p$12$1;->a:Lcom/mbridge/msdk/foundation/same/report/p$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/p$12$1;->a:Lcom/mbridge/msdk/foundation/same/report/p$12;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/report/p$12;->c:Lcom/mbridge/msdk/foundation/same/report/p;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Lcom/mbridge/msdk/foundation/same/report/p;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/p$12$1;->a:Lcom/mbridge/msdk/foundation/same/report/p$12;

    iget-object v1, v0, Lcom/mbridge/msdk/foundation/same/report/p$12;->a:Lcom/mbridge/msdk/foundation/entity/l;

    if-nez v1, :cond_11

    goto :goto_54

    :cond_11
    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/report/p$12;->c:Lcom/mbridge/msdk/foundation/same/report/p;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Lcom/mbridge/msdk/foundation/same/report/p;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/n;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/p$12$1;->a:Lcom/mbridge/msdk/foundation/same/report/p$12;

    iget-object v1, v1, Lcom/mbridge/msdk/foundation/same/report/p$12;->a:Lcom/mbridge/msdk/foundation/entity/l;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/db/n;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/p$12$1;->a:Lcom/mbridge/msdk/foundation/same/report/p$12;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/report/p$12;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/p$12$1;->a:Lcom/mbridge/msdk/foundation/same/report/p$12;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/report/p$12;->c:Lcom/mbridge/msdk/foundation/same/report/p;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Lcom/mbridge/msdk/foundation/same/report/p;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/n;->b()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_61

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->a()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/c;->c()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_55

    goto :goto_61

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_61

    sget-object v1, Lcom/mbridge/msdk/foundation/same/report/p;->a:Ljava/lang/String;

    const-string v2, "reportNetError"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    return-void
.end method
