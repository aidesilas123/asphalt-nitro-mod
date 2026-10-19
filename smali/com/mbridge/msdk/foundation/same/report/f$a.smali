###### Class com.mbridge.msdk.foundation.same.report.f.a (com.mbridge.msdk.foundation.same.report.f$a)
.class final Lcom/mbridge/msdk/foundation/same/report/f$a;
.super Lcom/mbridge/msdk/foundation/same/report/d/b;
.source "DefaultReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/report/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/mbridge/msdk/foundation/same/report/b$b;

.field private final c:Lcom/mbridge/msdk/foundation/same/report/b;

.field private final d:Lcom/mbridge/msdk/foundation/same/net/h/d;

.field private final e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/b$b;Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/net/h/d;)V
    .registers 5

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/report/d/b;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->b:Lcom/mbridge/msdk/foundation/same/report/b$b;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->c:Lcom/mbridge/msdk/foundation/same/report/b;

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->d:Lcom/mbridge/msdk/foundation/same/net/h/d;

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/b;->k()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/b$b;Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/report/f$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/foundation/same/report/f$a;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/b$b;Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/net/h/d;)V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .registers 7

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and isRetry = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonReport"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->c:Lcom/mbridge/msdk/foundation/same/report/b;

    if-eqz p1, :cond_5c

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->e:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->a:Landroid/content/Context;

    if-nez v0, :cond_31

    goto :goto_5c

    :cond_31
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->c:Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/b;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_4c
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->a:Landroid/content/Context;

    new-instance v3, Lcom/mbridge/msdk/foundation/same/report/f$a$1;

    invoke-direct {v3, p1, v2, v0, v1}, Lcom/mbridge/msdk/foundation/same/report/f$a$1;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/f$a;->c:Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonReport"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method
