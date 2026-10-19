###### Class com.iab.omid.library.gameloft.b.b (com.iab.omid.library.gameloft.b.b)
.class public Lcom/iab/omid/library/gameloft/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/gameloft/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/iab/omid/library/gameloft/b/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z

.field private f:Lcom/iab/omid/library/gameloft/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/gameloft/b/b;

    invoke-direct {v0}, Lcom/iab/omid/library/gameloft/b/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/gameloft/b/b;->a:Lcom/iab/omid/library/gameloft/b/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/gameloft/b/b;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/gameloft/b/b;->a:Lcom/iab/omid/library/gameloft/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/iab/omid/library/gameloft/b/b;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iab/omid/library/gameloft/b/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/iab/omid/library/gameloft/b/b;->e:Z

    if-eq v0, p1, :cond_18

    iput-boolean p1, p0, Lcom/iab/omid/library/gameloft/b/b;->e:Z

    iget-boolean p1, p0, Lcom/iab/omid/library/gameloft/b/b;->d:Z

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/iab/omid/library/gameloft/b/b;->g()V

    iget-object p1, p0, Lcom/iab/omid/library/gameloft/b/b;->f:Lcom/iab/omid/library/gameloft/b/b$a;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/b/b;->d()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/iab/omid/library/gameloft/b/b$a;->a(Z)V

    :cond_18
    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Lcom/iab/omid/library/gameloft/b/b$1;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/gameloft/b/b$1;-><init>(Lcom/iab/omid/library/gameloft/b/b;)V

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/b/b;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iab/omid/library/gameloft/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/iab/omid/library/gameloft/b/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/b/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/iab/omid/library/gameloft/b/b;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/b/b;->c:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method private g()V
    .registers 4

    iget-boolean v0, p0, Lcom/iab/omid/library/gameloft/b/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/a;->a()Lcom/iab/omid/library/gameloft/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/gameloft/b/a;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/gameloft/adsession/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/gameloft/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->a(Z)V

    goto :goto_10

    :cond_24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/gameloft/b/b;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/iab/omid/library/gameloft/b/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/gameloft/b/b;->f:Lcom/iab/omid/library/gameloft/b/b$a;

    return-void
.end method

.method public b()V
    .registers 2

    invoke-direct {p0}, Lcom/iab/omid/library/gameloft/b/b;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/gameloft/b/b;->d:Z

    invoke-direct {p0}, Lcom/iab/omid/library/gameloft/b/b;->g()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-direct {p0}, Lcom/iab/omid/library/gameloft/b/b;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/gameloft/b/b;->d:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/gameloft/b/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/b/b;->f:Lcom/iab/omid/library/gameloft/b/b$a;

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/gameloft/b/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class com.iab.omid.library.gameloft.b.b.AnonymousClass1 (com.iab.omid.library.gameloft.b.b$1)
.class Lcom/iab/omid/library/gameloft/b/b$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/gameloft/b/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/gameloft/b/b;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/gameloft/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/gameloft/b/b$1;->a:Lcom/iab/omid/library/gameloft/b/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/iab/omid/library/gameloft/b/b$1;->a:Lcom/iab/omid/library/gameloft/b/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/iab/omid/library/gameloft/b/b;->a(Lcom/iab/omid/library/gameloft/b/b;Z)V

    goto :goto_46

    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    :goto_23
    iget-object p1, p0, Lcom/iab/omid/library/gameloft/b/b$1;->a:Lcom/iab/omid/library/gameloft/b/b;

    invoke-static {p1, v1}, Lcom/iab/omid/library/gameloft/b/b;->a(Lcom/iab/omid/library/gameloft/b/b;Z)V

    goto :goto_46

    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_23

    :cond_46
    :goto_46
    return-void
.end method

###### Class com.iab.omid.library.gameloft.b.b.a (com.iab.omid.library.gameloft.b.b$a)
.class public interface abstract Lcom/iab/omid/library/gameloft/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/gameloft/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Z)V
.end method
