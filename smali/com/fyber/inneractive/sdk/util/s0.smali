###### Class com.fyber.inneractive.sdk.util.s0 (com.fyber.inneractive.sdk.util.s0)
.class public Lcom/fyber/inneractive/sdk/util/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/fyber/inneractive/sdk/util/s0$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/util/s0$a;-><init>(Lcom/fyber/inneractive/sdk/util/s0;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_18

    sget-object v1, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "UserAgentProvider | populated user agent form updateUserAgentIfPossible"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/util/s0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_18
    new-instance v0, Lcom/fyber/inneractive/sdk/util/s0$b;

    invoke-direct {v0, p0, p1}, Lcom/fyber/inneractive/sdk/util/s0$b;-><init>(Lcom/fyber/inneractive/sdk/util/s0;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    :try_start_8
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    nop

    goto :goto_14

    :catchall_13
    move-object v1, v0

    :goto_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/util/s0;->a(Ljava/lang/String;)V

    :cond_1d
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    :cond_22
    return-void
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    const-string v1, "fyber.ua"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "ua"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "UserAgentProvider | populated user agent from shared prefs"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_33
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/util/s0;->e()V

    :cond_36
    return-void
.end method

.method public d()V
    .registers 3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/util/s0;->c()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_25

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_25

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    :try_start_16
    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1b

    goto :goto_1c

    :catchall_1b
    nop

    :goto_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/util/s0;->a(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public final e()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_f

    new-instance v0, Lcom/fyber/inneractive/sdk/util/s0$c;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/util/s0$c;-><init>(Lcom/fyber/inneractive/sdk/util/s0;)V

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/m;->a(Ljava/lang/Runnable;)V

    goto :goto_27

    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/util/s0;->b()V

    goto :goto_27

    :cond_1d
    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/util/s0$d;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/util/s0$d;-><init>(Lcom/fyber/inneractive/sdk/util/s0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_27
    return-void
.end method

###### Class com.fyber.inneractive.sdk.util.s0.a (com.fyber.inneractive.sdk.util.s0$a)
.class public Lcom/fyber/inneractive/sdk/util/s0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/util/s0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/s0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/s0$a;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0$a;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/util/s0;->e()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.util.s0.b (com.fyber.inneractive.sdk.util.s0$b)
.class public Lcom/fyber/inneractive/sdk/util/s0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/util/s0;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/util/s0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/s0;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/s0$b;->b:Lcom/fyber/inneractive/sdk/util/s0;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/util/s0$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0$b;->b:Lcom/fyber/inneractive/sdk/util/s0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    const-string v1, "fyber.ua"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/util/s0$b;->a:Ljava/lang/String;

    const-string v2, "ua"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.util.s0.c (com.fyber.inneractive.sdk.util.s0$c)
.class public Lcom/fyber/inneractive/sdk/util/s0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/util/s0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/util/s0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/s0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/s0$c;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0$c;->a:Lcom/fyber/inneractive/sdk/util/s0;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    :try_start_7
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    nop

    :goto_d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/util/s0;->a(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

###### Class com.fyber.inneractive.sdk.util.s0.d (com.fyber.inneractive.sdk.util.s0$d)
.class public Lcom/fyber/inneractive/sdk/util/s0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/util/s0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/util/s0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/s0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/s0$d;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0$d;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/util/s0;->b()V

    return-void
.end method
