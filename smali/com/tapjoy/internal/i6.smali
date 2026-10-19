###### Class com.tapjoy.internal.i6 (com.tapjoy.internal.i6)
.class public final Lcom/tapjoy/internal/i6;
.super Lcom/tapjoy/internal/x0;
.source "SourceFile"


# static fields
.field public static d:Lcom/tapjoy/internal/i6;


# instance fields
.field public final e:Lcom/tapjoy/internal/v1;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/tapjoy/internal/t3;

.field public h:Lcom/tapjoy/internal/d;

.field public i:Z

.field public j:J

.field public final k:Landroid/content/Context;

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/v1;Ljava/lang/String;Lcom/tapjoy/internal/t3;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/tapjoy/internal/x0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/i6;->l:Z

    iput-object p1, p0, Lcom/tapjoy/internal/i6;->e:Lcom/tapjoy/internal/v1;

    iput-object p2, p0, Lcom/tapjoy/internal/i6;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iput-object p4, p0, Lcom/tapjoy/internal/i6;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/g2;)V
    .registers 7

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->k:Landroid/content/Context;

    :goto_2
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_e

    check-cast v0, Landroid/app/Activity;

    goto :goto_16

    :cond_e
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_15
    move-object v0, v2

    :goto_16
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_23

    :try_start_1e
    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/i6;->d(Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    :try_end_21
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1e .. :try_end_21} :catch_22

    return-void

    :catch_22
    nop

    :cond_23
    sget-object v0, Lcom/tapjoy/internal/t;->e:Lcom/tapjoy/internal/c8;

    iget-object v0, v0, Lcom/tapjoy/internal/c8;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    move-object v0, v2

    :goto_2f
    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_37

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/app/Activity;

    move-result-object v0

    :cond_37
    const/4 v1, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_49

    const/4 v1, 0x1

    :cond_49
    sget-object v3, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v3, v3, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    :try_start_4d
    new-instance v4, Lcom/tapjoy/internal/h4;

    invoke-direct {v4, p0, p1}, Lcom/tapjoy/internal/h4;-><init>(Lcom/tapjoy/internal/i6;Lcom/tapjoy/internal/g2;)V

    invoke-static {v3, v4, v1}, Lcom/tapjoy/TJContentActivity;->start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V
    :try_end_55
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4d .. :try_end_55} :catch_56

    return-void

    :catch_56
    nop

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_63

    :try_start_5f
    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/i6;->d(Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    :try_end_62
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5f .. :try_end_62} :catch_63

    return-void

    :catch_63
    :cond_63
    iget-object v0, p0, Lcom/tapjoy/internal/i6;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    return-void
.end method

.method public final b()Z
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object v1, v0, Lcom/tapjoy/internal/t3;->c:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_38

    iget-object v1, v1, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/tapjoy/internal/t3;->l:Lcom/tapjoy/internal/g8;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lcom/tapjoy/internal/g8;->b:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_38

    :cond_16
    iget-object v1, v0, Lcom/tapjoy/internal/t3;->b:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_26

    iget-object v2, v0, Lcom/tapjoy/internal/t3;->f:Lcom/tapjoy/internal/n3;

    if-eqz v2, :cond_26

    iget-object v1, v1, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_26

    iget-object v1, v2, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-nez v1, :cond_36

    :cond_26
    iget-object v1, v0, Lcom/tapjoy/internal/t3;->a:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_38

    iget-object v0, v0, Lcom/tapjoy/internal/t3;->e:Lcom/tapjoy/internal/n3;

    if-eqz v0, :cond_38

    iget-object v1, v1, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_38

    iget-object v0, v0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    return v0
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object v1, v0, Lcom/tapjoy/internal/t3;->a:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/tapjoy/internal/n3;->c()V

    :cond_9
    iget-object v1, v0, Lcom/tapjoy/internal/t3;->b:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/tapjoy/internal/n3;->c()V

    :cond_10
    iget-object v1, v0, Lcom/tapjoy/internal/t3;->c:Lcom/tapjoy/internal/n3;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n3;->c()V

    iget-object v1, v0, Lcom/tapjoy/internal/t3;->e:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/tapjoy/internal/n3;->c()V

    :cond_1c
    iget-object v1, v0, Lcom/tapjoy/internal/t3;->f:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/tapjoy/internal/n3;->c()V

    :cond_23
    iget-object v0, v0, Lcom/tapjoy/internal/t3;->l:Lcom/tapjoy/internal/g8;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/tapjoy/internal/g8;->b:Lcom/tapjoy/internal/n3;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/tapjoy/internal/n3;->c()V

    :cond_2e
    return-void
.end method

.method public final d(Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    .registers 8

    iget-boolean v0, p0, Lcom/tapjoy/internal/i6;->i:Z

    if-eqz v0, :cond_13

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "Content is already displayed"

    invoke-direct {p1, p2, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p2, "r3"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/i6;->i:Z

    sput-object p0, Lcom/tapjoy/internal/i6;->d:Lcom/tapjoy/internal/i6;

    new-instance v0, Lcom/tapjoy/internal/d;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    new-instance v1, Lcom/tapjoy/internal/t4;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/internal/t4;-><init>(Lcom/tapjoy/internal/i6;Lcom/tapjoy/internal/g2;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    new-instance v1, Lcom/tapjoy/internal/k5;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/k5;-><init>(Lcom/tapjoy/internal/i6;Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/tapjoy/internal/c7;

    iget-object v1, p0, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    new-instance v2, Lcom/tapjoy/internal/y5;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/y5;-><init>(Lcom/tapjoy/internal/i6;Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/c7;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/t3;Lcom/tapjoy/internal/y5;)V

    new-instance v1, Lcom/tapjoy/internal/r6;

    iget-object v2, p0, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    invoke-direct {v1, p1, v2, v0}, Lcom/tapjoy/internal/r6;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/t3;Lcom/tapjoy/internal/c7;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    invoke-virtual {v0}, Lcom/tapjoy/internal/d;->show()V

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x400

    and-int/2addr p1, v0

    if-eqz p1, :cond_86

    iget-object p1, p0, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/i6;->j:J

    iget-object p1, p0, Lcom/tapjoy/internal/i6;->e:Lcom/tapjoy/internal/v1;

    iget-object v0, p0, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object v0, v0, Lcom/tapjoy/internal/t3;->k:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    const-string v2, "impression"

    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v1

    if-eqz v0, :cond_c2

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Lcom/tapjoy/internal/h1;

    invoke-direct {v3, v2}, Lcom/tapjoy/internal/h1;-><init>(Ljava/io/StringWriter;)V

    const/4 v4, 0x0

    :try_start_ac
    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_bd

    :try_start_af
    iget-object v0, v3, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b7} :catch_b8

    goto :goto_c2

    :catch_b8
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v4

    :catch_bd
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v4

    :cond_c2
    :goto_c2
    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    iget-object p1, p0, Lcom/tapjoy/internal/i6;->f:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/g2;->b(Ljava/lang/String;)V

    return-void
.end method
