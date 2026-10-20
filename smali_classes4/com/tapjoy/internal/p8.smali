###### Class com.tapjoy.internal.p8 (com.tapjoy.internal.p8)
.class public final Lcom/tapjoy/internal/p8;
.super Lcom/tapjoy/internal/x0;
.source "SourceFile"


# static fields
.field public static d:Lcom/tapjoy/internal/p8;


# instance fields
.field public final e:Lcom/tapjoy/internal/v1;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/tapjoy/internal/t5;

.field public h:Z

.field public i:Z

.field public final j:Landroid/content/Context;

.field public k:Lcom/tapjoy/internal/b7;

.field public l:Landroid/app/Activity;

.field public m:Lcom/tapjoy/internal/g2;

.field public n:Landroid/os/Handler;

.field public o:Lcom/tapjoy/internal/d8;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/v1;Ljava/lang/String;Lcom/tapjoy/internal/t5;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/tapjoy/internal/x0;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/p8;->e:Lcom/tapjoy/internal/v1;

    iput-object p2, p0, Lcom/tapjoy/internal/p8;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    iput-object p4, p0, Lcom/tapjoy/internal/p8;->j:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/g2;)V
    .registers 5

    iput-object p1, p0, Lcom/tapjoy/internal/p8;->m:Lcom/tapjoy/internal/g2;

    sget-object v0, Lcom/tapjoy/internal/t;->e:Lcom/tapjoy/internal/c8;

    iget-object v0, v0, Lcom/tapjoy/internal/c8;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/app/Activity;

    move-result-object v0

    :cond_17
    iput-object v0, p0, Lcom/tapjoy/internal/p8;->l:Landroid/app/Activity;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    :try_start_21
    iget-object v0, p0, Lcom/tapjoy/internal/p8;->l:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/p8;->d(Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    :try_end_26
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_21 .. :try_end_26} :catch_27

    return-void

    :catch_27
    :cond_27
    iget-object v0, p0, Lcom/tapjoy/internal/p8;->j:Landroid/content/Context;

    :goto_29
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_3b

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_34

    check-cast v0, Landroid/app/Activity;

    goto :goto_3c

    :cond_34
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_29

    :cond_3b
    move-object v0, v1

    :goto_3c
    iput-object v0, p0, Lcom/tapjoy/internal/p8;->l:Landroid/app/Activity;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4c

    :try_start_46
    iget-object v0, p0, Lcom/tapjoy/internal/p8;->l:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/p8;->d(Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    :try_end_4b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_46 .. :try_end_4b} :catch_4c

    return-void

    :catch_4c
    :cond_4c
    iget-object v0, p0, Lcom/tapjoy/internal/p8;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    invoke-virtual {v0}, Lcom/tapjoy/internal/t5;->a()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    iget-object v0, v0, Lcom/tapjoy/internal/t5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/o2;

    iget-object v1, v1, Lcom/tapjoy/internal/o2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/u0;

    iget-object v3, v2, Lcom/tapjoy/internal/u0;->l:Lcom/tapjoy/internal/n3;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/tapjoy/internal/n3;->c()V

    :cond_2d
    iget-object v2, v2, Lcom/tapjoy/internal/u0;->m:Lcom/tapjoy/internal/n3;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/tapjoy/internal/n3;->c()V

    goto :goto_1a

    :cond_35
    return-void
.end method

.method public final d(Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    .registers 8

    iget-boolean v0, p0, Lcom/tapjoy/internal/p8;->h:Z

    if-eqz v0, :cond_13

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "Content is already displayed"

    invoke-direct {p1, p2, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p2, "x0"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/p8;->h:Z

    iput-boolean v0, p0, Lcom/tapjoy/internal/p8;->i:Z

    sput-object p0, Lcom/tapjoy/internal/p8;->d:Lcom/tapjoy/internal/p8;

    new-instance v0, Lcom/tapjoy/internal/b7;

    iget-object v1, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    new-instance v2, Lcom/tapjoy/internal/w7;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/w7;-><init>(Lcom/tapjoy/internal/p8;Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/b7;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/t5;Lcom/tapjoy/internal/w7;)V

    iput-object v0, p0, Lcom/tapjoy/internal/p8;->k:Lcom/tapjoy/internal/b7;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->k:Lcom/tapjoy/internal/b7;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, p0, Lcom/tapjoy/internal/p8;->e:Lcom/tapjoy/internal/v1;

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    iget-object v0, v0, Lcom/tapjoy/internal/t5;->b:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    const-string v2, "impression"

    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v1

    if-eqz v0, :cond_7c

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Lcom/tapjoy/internal/h1;

    invoke-direct {v4, v2}, Lcom/tapjoy/internal/h1;-><init>(Ljava/io/StringWriter;)V

    :try_start_66
    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_77

    :try_start_69
    iget-object v0, v4, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_7c

    :catch_72
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v3

    :catch_77
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v3

    :cond_7c
    :goto_7c
    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    iget-object p1, p0, Lcom/tapjoy/internal/p8;->f:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/g2;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    iget p1, p1, Lcom/tapjoy/internal/t5;->c:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_ab

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tapjoy/internal/p8;->n:Landroid/os/Handler;

    new-instance p2, Lcom/tapjoy/internal/d8;

    invoke-direct {p2, p0}, Lcom/tapjoy/internal/d8;-><init>(Lcom/tapjoy/internal/p8;)V

    iput-object p2, p0, Lcom/tapjoy/internal/p8;->o:Lcom/tapjoy/internal/d8;

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    iget v0, v0, Lcom/tapjoy/internal/t5;->c:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ab
    return-void
.end method

.method public final e()V
    .registers 7

    iget-boolean v0, p0, Lcom/tapjoy/internal/p8;->i:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/p8;->i:Z

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/tapjoy/internal/p8;->o:Lcom/tapjoy/internal/d8;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/tapjoy/internal/p8;->o:Lcom/tapjoy/internal/d8;

    iput-object v1, p0, Lcom/tapjoy/internal/p8;->n:Landroid/os/Handler;

    :cond_16
    sget-object v0, Lcom/tapjoy/internal/p8;->d:Lcom/tapjoy/internal/p8;

    if-ne v0, p0, :cond_1c

    sput-object v1, Lcom/tapjoy/internal/p8;->d:Lcom/tapjoy/internal/p8;

    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/internal/p8;->e:Lcom/tapjoy/internal/v1;

    iget-object v2, p0, Lcom/tapjoy/internal/p8;->g:Lcom/tapjoy/internal/t5;

    iget-object v2, v2, Lcom/tapjoy/internal/t5;->b:Ljava/util/LinkedHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, v0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    const-string v4, "view"

    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v3

    if-eqz v2, :cond_54

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Lcom/tapjoy/internal/h1;

    invoke-direct {v5, v4}, Lcom/tapjoy/internal/h1;-><init>(Ljava/io/StringWriter;)V

    :try_start_3e
    invoke-virtual {v5, v2}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4f

    :try_start_41
    iget-object v2, v5, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_4a

    goto :goto_54

    :catch_4a
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v1

    :catch_4f
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v1

    :cond_54
    :goto_54
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    iget-boolean v0, p0, Lcom/tapjoy/internal/x0;->a:Z

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->m:Lcom/tapjoy/internal/g2;

    if-eqz v0, :cond_68

    iget-object v2, p0, Lcom/tapjoy/internal/p8;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    iput-object v1, p0, Lcom/tapjoy/internal/p8;->m:Lcom/tapjoy/internal/g2;

    :cond_68
    iget-object v0, p0, Lcom/tapjoy/internal/p8;->k:Lcom/tapjoy/internal/b7;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_77

    iget-object v2, p0, Lcom/tapjoy/internal/p8;->k:Lcom/tapjoy/internal/b7;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_77
    iput-object v1, p0, Lcom/tapjoy/internal/p8;->k:Lcom/tapjoy/internal/b7;

    iget-object v0, p0, Lcom/tapjoy/internal/p8;->l:Landroid/app/Activity;

    instance-of v2, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v2, :cond_82

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_82
    iput-object v1, p0, Lcom/tapjoy/internal/p8;->l:Landroid/app/Activity;

    return-void
.end method
