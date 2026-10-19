###### Class com.tapjoy.internal.q (com.tapjoy.internal.q)
.class public abstract Lcom/tapjoy/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 8

    sget-object v0, Lcom/tapjoy/internal/q;->a:Lcom/tapjoy/internal/q;

    if-eqz v0, :cond_7d

    check-cast v0, Lcom/tapjoy/internal/z6;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_5d

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    goto :goto_5a

    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_5a

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_34

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :goto_35
    if-nez v4, :cond_38

    goto :goto_5a

    :cond_38
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_3f

    goto :goto_5a

    :cond_3f
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    iget-object v4, v0, Lcom/tapjoy/internal/z6;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_58

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_58

    goto :goto_5a

    :cond_58
    const/4 p0, 0x1

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    :goto_5b
    if-nez p0, :cond_76

    :cond_5d
    iget-boolean p0, v0, Lcom/tapjoy/internal/z6;->e:Z

    if-nez p0, :cond_7b

    iget-object p0, v0, Lcom/tapjoy/internal/z6;->d:Lcom/tapjoy/internal/a4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tapjoy/internal/a4;->b:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/tapjoy/internal/a4;->a:J
    :try_end_6f
    .catch Ljava/lang/NullPointerException; {:try_start_66 .. :try_end_6f} :catch_73

    cmp-long p0, v3, v5

    if-lez p0, :cond_74

    :catch_73
    const/4 v1, 0x1

    :cond_74
    if-eqz v1, :cond_7b

    :cond_76
    iget-object p0, v0, Lcom/tapjoy/internal/z6;->f:Lcom/tapjoy/internal/o6;

    invoke-virtual {p0}, Lcom/tapjoy/internal/y4;->g()Z

    :cond_7b
    iput-boolean v2, v0, Lcom/tapjoy/internal/z6;->e:Z

    :cond_7d
    return-void
.end method
