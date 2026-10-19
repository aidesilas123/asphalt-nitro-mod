###### Class com.json.lifecycle.b (com.ironsource.lifecycle.b)
.class public Lcom/ironsource/lifecycle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static a:Lcom/ironsource/lifecycle/b;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/ironsource/m8;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/l8;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/ironsource/lifecycle/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/lifecycle/b;

    invoke-direct {v0}, Lcom/ironsource/lifecycle/b;-><init>()V

    sput-object v0, Lcom/ironsource/lifecycle/b;->a:Lcom/ironsource/lifecycle/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/lifecycle/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IronsourceLifecycleManager"

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/lifecycle/b;->d:I

    iput v0, p0, Lcom/ironsource/lifecycle/b;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->f:Z

    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->g:Z

    sget-object v0, Lcom/ironsource/m8;->a:Lcom/ironsource/m8;

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->h:Lcom/ironsource/m8;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/util/List;

    new-instance v0, Lcom/ironsource/lifecycle/b$a;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$a;-><init>(Lcom/ironsource/lifecycle/b;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/ironsource/lifecycle/b$f;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$f;-><init>(Lcom/ironsource/lifecycle/b;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->k:Lcom/ironsource/lifecycle/a$a;

    return-void
.end method

.method private a()V
    .registers 3

    iget v0, p0, Lcom/ironsource/lifecycle/b;->e:I

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->f:Z

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/lifecycle/b$d;

    invoke-direct {v1, p0}, Lcom/ironsource/lifecycle/b$d;-><init>(Lcom/ironsource/lifecycle/b;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/ironsource/m8;->d:Lcom/ironsource/m8;

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->h:Lcom/ironsource/m8;

    :cond_15
    return-void
.end method

.method public static d()Lcom/ironsource/lifecycle/b;
    .registers 1

    sget-object v0, Lcom/ironsource/lifecycle/b;->a:Lcom/ironsource/lifecycle/b;

    return-object v0
.end method

.method static synthetic d(Lcom/ironsource/lifecycle/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->a()V

    return-void
.end method

.method private f()V
    .registers 3

    iget v0, p0, Lcom/ironsource/lifecycle/b;->d:I

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/ironsource/lifecycle/b;->f:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/lifecycle/b$e;

    invoke-direct {v1, p0}, Lcom/ironsource/lifecycle/b$e;-><init>(Lcom/ironsource/lifecycle/b;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->g:Z

    sget-object v0, Lcom/ironsource/m8;->e:Lcom/ironsource/m8;

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->h:Lcom/ironsource/m8;

    :cond_19
    return-void
.end method

.method static synthetic h(Lcom/ironsource/lifecycle/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->f()V

    return-void
.end method

.method static synthetic i(Lcom/ironsource/lifecycle/b;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ironsource/l8;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/lifecycle/IronsourceLifecycleProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method b(Landroid/app/Activity;)V
    .registers 5

    iget p1, p0, Lcom/ironsource/lifecycle/b;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ironsource/lifecycle/b;->e:I

    if-nez p1, :cond_11

    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method public b(Lcom/ironsource/l8;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public c()Lcom/ironsource/m8;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->h:Lcom/ironsource/m8;

    return-object v0
.end method

.method c(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/ironsource/lifecycle/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-eqz p1, :cond_15

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_15
    return-void
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->h:Lcom/ironsource/m8;

    sget-object v1, Lcom/ironsource/m8;->e:Lcom/ironsource/m8;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method g(Landroid/app/Activity;)V
    .registers 3

    iget p1, p0, Lcom/ironsource/lifecycle/b;->e:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ironsource/lifecycle/b;->e:I

    if-ne p1, v0, :cond_25

    iget-boolean p1, p0, Lcom/ironsource/lifecycle/b;->f:Z

    if-eqz p1, :cond_1e

    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v0, Lcom/ironsource/lifecycle/b$c;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$c;-><init>(Lcom/ironsource/lifecycle/b;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ironsource/lifecycle/b;->f:Z

    sget-object p1, Lcom/ironsource/m8;->c:Lcom/ironsource/m8;

    iput-object p1, p0, Lcom/ironsource/lifecycle/b;->h:Lcom/ironsource/m8;

    goto :goto_25

    :cond_1e
    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->removeUiThreadTask(Ljava/lang/Runnable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method j(Landroid/app/Activity;)V
    .registers 3

    iget p1, p0, Lcom/ironsource/lifecycle/b;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ironsource/lifecycle/b;->d:I

    if-ne p1, v0, :cond_1d

    iget-boolean p1, p0, Lcom/ironsource/lifecycle/b;->g:Z

    if-eqz p1, :cond_1d

    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v0, Lcom/ironsource/lifecycle/b$b;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$b;-><init>(Lcom/ironsource/lifecycle/b;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ironsource/lifecycle/b;->g:Z

    sget-object p1, Lcom/ironsource/m8;->b:Lcom/ironsource/m8;

    iput-object p1, p0, Lcom/ironsource/lifecycle/b;->h:Lcom/ironsource/m8;

    :cond_1d
    return-void
.end method

.method k(Landroid/app/Activity;)V
    .registers 2

    iget p1, p0, Lcom/ironsource/lifecycle/b;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ironsource/lifecycle/b;->d:I

    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->f()V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p1}, Lcom/ironsource/lifecycle/a;->c(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/ironsource/lifecycle/a;->a(Landroid/app/Activity;)Lcom/ironsource/lifecycle/a;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p2, p0, Lcom/ironsource/lifecycle/b;->k:Lcom/ironsource/lifecycle/a$a;

    invoke-virtual {p1, p2}, Lcom/ironsource/lifecycle/a;->f(Lcom/ironsource/lifecycle/a$a;)V

    :cond_e
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/lifecycle/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/lifecycle/b;->k(Landroid/app/Activity;)V

    return-void
.end method

###### Class com.ironsource.lifecycle.b.a (com.ironsource.lifecycle.b$a)
.class Lcom/ironsource/lifecycle/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/lifecycle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/lifecycle/b;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$a;->a:Lcom/ironsource/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$a;->a:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->d(Lcom/ironsource/lifecycle/b;)V

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$a;->a:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->h(Lcom/ironsource/lifecycle/b;)V

    return-void
.end method

###### Class com.json.lifecycle.b.RunnableC0357b (com.ironsource.lifecycle.b$b)
.class Lcom/ironsource/lifecycle/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/lifecycle/b;->j(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/lifecycle/b;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$b;->a:Lcom/ironsource/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$b;->a:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->i(Lcom/ironsource/lifecycle/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/l8;

    invoke-interface {v1}, Lcom/ironsource/l8;->c()V

    goto :goto_a

    :cond_1a
    return-void
.end method

###### Class com.ironsource.lifecycle.b.c (com.ironsource.lifecycle.b$c)
.class Lcom/ironsource/lifecycle/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/lifecycle/b;->g(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/lifecycle/b;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$c;->a:Lcom/ironsource/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$c;->a:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->i(Lcom/ironsource/lifecycle/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/l8;

    invoke-interface {v1}, Lcom/ironsource/l8;->a()V

    goto :goto_a

    :cond_1a
    return-void
.end method

###### Class com.ironsource.lifecycle.b.d (com.ironsource.lifecycle.b$d)
.class Lcom/ironsource/lifecycle/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/lifecycle/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/lifecycle/b;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$d;->a:Lcom/ironsource/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$d;->a:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->i(Lcom/ironsource/lifecycle/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/l8;

    invoke-interface {v1}, Lcom/ironsource/l8;->d()V

    goto :goto_a

    :cond_1a
    return-void
.end method

###### Class com.ironsource.lifecycle.b.e (com.ironsource.lifecycle.b$e)
.class Lcom/ironsource/lifecycle/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/lifecycle/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/lifecycle/b;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$e;->a:Lcom/ironsource/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$e;->a:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->i(Lcom/ironsource/lifecycle/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/l8;

    invoke-interface {v1}, Lcom/ironsource/l8;->b()V

    goto :goto_a

    :cond_1a
    return-void
.end method

###### Class com.ironsource.lifecycle.b.f (com.ironsource.lifecycle.b$f)
.class Lcom/ironsource/lifecycle/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/lifecycle/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/lifecycle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/lifecycle/b;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$f;->a:Lcom/ironsource/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$f;->a:Lcom/ironsource/lifecycle/b;

    invoke-virtual {v0, p1}, Lcom/ironsource/lifecycle/b;->j(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/lifecycle/b$f;->a:Lcom/ironsource/lifecycle/b;

    invoke-virtual {v0, p1}, Lcom/ironsource/lifecycle/b;->g(Landroid/app/Activity;)V

    return-void
.end method
