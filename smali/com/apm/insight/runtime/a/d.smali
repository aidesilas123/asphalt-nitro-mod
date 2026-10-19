###### Class com.apm.insight.runtime.a.d (com.apm.insight.runtime.a.d)
.class Lcom/apm/insight/runtime/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/runtime/a/d$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/apm/insight/runtime/p;->b()Lcom/apm/insight/runtime/u;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/runtime/a/d$1;

    invoke-direct {v1, p0, p1}, Lcom/apm/insight/runtime/a/d$1;-><init>(Lcom/apm/insight/runtime/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/runtime/a/d;I)I
    .registers 2

    iput p1, p0, Lcom/apm/insight/runtime/a/d;->a:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/apm/insight/runtime/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apm/insight/runtime/a/d$a;-><init>(Lcom/apm/insight/runtime/a/d;Lcom/apm/insight/runtime/a/d$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/runtime/a/d;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/apm/insight/runtime/a/d;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/apm/insight/runtime/a/d;->a:I

    return v0
.end method

###### Class com.apm.insight.runtime.a.d.AnonymousClass1 (com.apm.insight.runtime.a.d$1)
.class Lcom/apm/insight/runtime/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/runtime/a/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/apm/insight/runtime/a/d;


# direct methods
.method constructor <init>(Lcom/apm/insight/runtime/a/d;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/apm/insight/runtime/a/d$1;->b:Lcom/apm/insight/runtime/a/d;

    iput-object p2, p0, Lcom/apm/insight/runtime/a/d$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/runtime/a/d$1;->b:Lcom/apm/insight/runtime/a/d;

    iget-object v1, p0, Lcom/apm/insight/runtime/a/d$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/apm/insight/runtime/a/d;->a(Lcom/apm/insight/runtime/a/d;Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_12

    :catchall_8
    move-exception v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v1

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v1, v2, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

###### Class com.apm.insight.runtime.a.d.a (com.apm.insight.runtime.a.d$a)
.class Lcom/apm/insight/runtime/a/d$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apm/insight/runtime/a/d;


# direct methods
.method private constructor <init>(Lcom/apm/insight/runtime/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/apm/insight/runtime/a/d$a;->a:Lcom/apm/insight/runtime/a/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apm/insight/runtime/a/d;Lcom/apm/insight/runtime/a/d$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/apm/insight/runtime/a/d$a;-><init>(Lcom/apm/insight/runtime/a/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/apm/insight/runtime/a/d$a;->a:Lcom/apm/insight/runtime/a/d;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/apm/insight/runtime/a/d;->a(Lcom/apm/insight/runtime/a/d;I)I
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_28

    :catchall_28
    :cond_28
    return-void
.end method
