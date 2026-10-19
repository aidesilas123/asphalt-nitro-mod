###### Class com.nearme.game.sdk.d (com.nearme.game.sdk.d)
.class public abstract Lcom/nearme/game/sdk/d;
.super Ljava/lang/Object;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/game/sdk/d$i;
    }
.end annotation


# static fields
.field private static a:Lcom/nearme/game/sdk/common/util/a;

.field private static b:Lcom/nearme/game/sdk/common/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nearme/game/sdk/common/util/LongSparseArray<",
            "Lcom/nearme/game/sdk/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected e:Landroid/content/Context;

.field private f:Landroid/os/Messenger;

.field protected g:Lcom/nearme/game/sdk/common/model/biz/a;

.field private h:Z

.field protected final i:Landroid/os/Handler;

.field private final j:[B

.field private final k:[B

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Z

.field private n:I

.field protected o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/nearme/game/sdk/b/b;

.field private q:Landroid/content/ServiceConnection;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/nearme/game/sdk/common/util/a;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/util/a;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/d;->a:Lcom/nearme/game/sdk/common/util/a;

    new-instance v0, Lcom/nearme/game/sdk/common/util/LongSparseArray;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/d;->b:Lcom/nearme/game/sdk/common/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/d;->c:Ljava/util/List;

    const/16 v1, 0x1b59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->c:Ljava/util/List;

    const/16 v2, 0x1b67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    const/16 v1, 0x1b70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/game/sdk/d;->h:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/nearme/game/sdk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nearme/game/sdk/d;->m:Z

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/nearme/game/sdk/d;->n:I

    new-instance v1, Lcom/nearme/game/sdk/d$c;

    invoke-direct {v1, p0}, Lcom/nearme/game/sdk/d$c;-><init>(Lcom/nearme/game/sdk/d;)V

    iput-object v1, p0, Lcom/nearme/game/sdk/d;->q:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/nearme/game/sdk/d$f;

    invoke-direct {v1, p0}, Lcom/nearme/game/sdk/d$f;-><init>(Lcom/nearme/game/sdk/d;)V

    iput-object v1, p0, Lcom/nearme/game/sdk/d;->r:Ljava/lang/Runnable;

    new-instance v1, Lcom/nearme/game/sdk/d$g;

    invoke-direct {v1, p0}, Lcom/nearme/game/sdk/d$g;-><init>(Lcom/nearme/game/sdk/d;)V

    iput-object v1, p0, Lcom/nearme/game/sdk/d;->s:Ljava/lang/Runnable;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/nearme/game/sdk/d$h;

    invoke-direct {v2, p0}, Lcom/nearme/game/sdk/d$h;-><init>(Lcom/nearme/game/sdk/d;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/nearme/game/sdk/d;->t:Landroid/os/Messenger;

    const-string v1, "GCInternal"

    const-string v2, "Hook init."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/nearme/game/sdk/d$a;

    invoke-direct {v2, p0}, Lcom/nearme/game/sdk/d$a;-><init>(Lcom/nearme/game/sdk/d;)V

    invoke-static {p1, v2}, Lcom/nearme/game/sdk/common/z/z;->init(Landroid/content/Context;Lcom/nearme/game/sdk/c/a/a;)V

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/nearme/game/sdk/d;->j:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nearme/game/sdk/d;->k:[B

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/nearme/game/sdk/d;->g:Lcom/nearme/game/sdk/common/model/biz/a;

    new-instance v0, Lcom/nearme/game/sdk/d$b;

    invoke-direct {v0, p0}, Lcom/nearme/game/sdk/d$b;-><init>(Lcom/nearme/game/sdk/d;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    iget-boolean p2, p2, Lcom/nearme/game/sdk/common/model/biz/a;->d:Z

    iput-boolean p2, p0, Lcom/nearme/game/sdk/d;->h:Z

    const-string v0, "GameCenterSDK"

    invoke-static {p2, v0}, Lcom/nearme/plugin/framework/LogUtils;->logInit(ZLjava/lang/String;)V

    const-string p2, "oppo_game_service.so"

    const-string v0, "oppo_game_service_201901.so"

    invoke-static {p1, p2, v0}, Lcom/nearme/plugin/framework/o_a;->o_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    sget v0, Lcom/nearme/plugin/framework/o_a;->a:I

    if-eq v0, p2, :cond_98

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/nearme/game/sdk/common/util/AppUtil;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget v0, Lcom/nearme/plugin/framework/o_a;->c:I

    if-ne v0, p2, :cond_8c

    invoke-static {p1}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitSdkPluginProcess(Landroid/content/Context;)V

    const-string p2, "PluginLoader.INSTALL_STATUS_REINSTALL"

    invoke-static {v1, p2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    invoke-direct {p0, p1}, Lcom/nearme/game/sdk/d;->y(Landroid/content/Context;)V

    return-void

    :cond_90
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u8bf7\u53c2\u7167\u63a5\u5165\u6587\u6863\u53ea\u80fd\u5728\u6e38\u620f\u4e3b\u8fdb\u7a0b\u4e2d\u8c03\u7528init\u64cd\u4f5c!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "install game service failed!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/nearme/game/sdk/d;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nearme/game/sdk/d;->y(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->f:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic c(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/b/a;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Lcom/nearme/game/sdk/c/b/b;

    invoke-direct {v0}, Lcom/nearme/game/sdk/c/b/b;-><init>()V

    iput p3, v0, Lcom/nearme/game/sdk/c/b/b;->b:I

    iput-object p2, v0, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const/4 p1, 0x1

    aput-object v0, p2, p1

    iget-object p3, p0, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d;->f:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic e(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->t:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic f()Lcom/nearme/game/sdk/common/util/LongSparseArray;
    .registers 1

    sget-object v0, Lcom/nearme/game/sdk/d;->b:Lcom/nearme/game/sdk/common/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic g(Lcom/nearme/game/sdk/d;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/nearme/game/sdk/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/nearme/game/sdk/d;->x()V

    return-void
.end method

.method static synthetic i(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/c/b/b;)V
    .registers 4

    iget p1, p1, Lcom/nearme/game/sdk/c/b/b;->b:I

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_3d

    invoke-virtual {p0}, Lcom/nearme/game/sdk/d;->t()V

    invoke-static {}, Lcom/nearme/game/sdk/common/z/y;->finishGameActivities()V

    :try_start_c
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "PARAM_START_PLUGIN_INTERNAL_ACTIVITIE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    const-class v1, Lcom/nearme/game/sdk/component/proxy/ExitActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    :goto_2f
    const-string p1, "GCInternal"

    const-string v0, "solveServerInvoke :: RESULT_CODE_EXIT_GAME"

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->p:Lcom/nearme/game/sdk/b/b;

    if-eqz p0, :cond_3d

    invoke-interface {p0}, Lcom/nearme/game/sdk/b/b;->a()V

    :cond_3d
    return-void
.end method

.method static synthetic j(Lcom/nearme/game/sdk/d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/nearme/game/sdk/d;->m:Z

    return p0
.end method

.method static synthetic k(Lcom/nearme/game/sdk/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nearme/game/sdk/d;->m:Z

    return p1
.end method

.method static synthetic l(Lcom/nearme/game/sdk/d;)[B
    .registers 1

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->j:[B

    return-object p0
.end method

.method static synthetic m(Lcom/nearme/game/sdk/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic n(Lcom/nearme/game/sdk/d;)V
    .registers 4

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->g:Lcom/nearme/game/sdk/common/model/biz/a;

    new-instance v1, Lcom/nearme/game/sdk/d$d;

    invoke-direct {v1, p0}, Lcom/nearme/game/sdk/d$d;-><init>(Lcom/nearme/game/sdk/d;)V

    const/16 v2, 0x1b59

    invoke-virtual {p0, v2, v0, v1}, Lcom/nearme/game/sdk/d;->w(ILjava/lang/Object;Lcom/nearme/game/sdk/b/a;)V

    return-void
.end method

.method static synthetic o(Lcom/nearme/game/sdk/d;)[B
    .registers 1

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->k:[B

    return-object p0
.end method

.method static synthetic p(Lcom/nearme/game/sdk/d;)I
    .registers 1

    iget p0, p0, Lcom/nearme/game/sdk/d;->n:I

    return p0
.end method

.method static synthetic q(Lcom/nearme/game/sdk/d;I)I
    .registers 2

    iput p1, p0, Lcom/nearme/game/sdk/d;->n:I

    return p1
.end method

.method static synthetic r()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/nearme/game/sdk/d;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/nearme/game/sdk/d;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/nearme/game/sdk/d;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method private x()V
    .registers 3

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/nearme/game/sdk/d;->q:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_14

    :try_start_8
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    sget-boolean v1, Lcom/nearme/plugin/framework/LogUtils;->b:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_14
    return-void
.end method

.method private y(Landroid/content/Context;)V
    .registers 5

    const-string v0, "GCInternal"

    const-string v1, "bindApiService"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nearme/game/sdk/component/proxy/ProxyApiService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PLUGIN_NAME"

    const-string v2, "oppo_game_service.so"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LAUNCH_COMPONENT"

    const-string v2, "com.nearme.game.service.ui.service.ApiPluginService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARAM_COMM_ACT_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/nearme/game/sdk/d;->h:Z

    const-string v2, "LOG_ENABLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "LOG_TAG"

    const-string v2, "GameCenterSDK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nearme/game/sdk/d;->q:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method A(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->o:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/d;->o:Ljava/lang/ref/WeakReference;

    :cond_b
    const/16 p1, 0x1b68

    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/d;->u(I)V

    return-void
.end method

.method declared-synchronized t()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nearme/game/sdk/d;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nearme/game/sdk/d;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/nearme/game/sdk/d;->b:Lcom/nearme/game/sdk/common/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b()V

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/nearme/game/sdk/d;->f:Landroid/os/Messenger;

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/nearme/game/sdk/d;->x()V

    :cond_1f
    iget-object v0, p0, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitSdkPluginProcess(Landroid/content/Context;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method u(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/nearme/game/sdk/d;->w(ILjava/lang/Object;Lcom/nearme/game/sdk/b/a;)V

    return-void
.end method

.method v(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nearme/game/sdk/d;->w(ILjava/lang/Object;Lcom/nearme/game/sdk/b/a;)V

    return-void
.end method

.method w(ILjava/lang/Object;Lcom/nearme/game/sdk/b/a;)V
    .registers 6

    iget-boolean v0, p0, Lcom/nearme/game/sdk/d;->m:Z

    const-string v1, "GCInternal"

    if-nez v0, :cond_22

    const/16 v0, 0x1b68

    if-eq v0, p1, :cond_e

    const/16 v0, 0x1b69

    if-ne v0, p1, :cond_22

    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "receive resume or pause before init accomplish, request is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/nearme/game/sdk/d;->n:I

    return-void

    :cond_22
    new-instance v0, Lcom/nearme/game/sdk/c/b/a;

    invoke-direct {v0}, Lcom/nearme/game/sdk/c/b/a;-><init>()V

    iput p1, v0, Lcom/nearme/game/sdk/c/b/a;->a:I

    if-eqz p2, :cond_31

    invoke-static {p2}, Lcom/nearme/game/sdk/common/util/IOUtil;->ObjectToByte(Ljava/lang/Object;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/nearme/game/sdk/c/b/a;->b:[B

    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "receive request "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d;->g:Lcom/nearme/game/sdk/common/model/biz/a;

    iget-boolean p1, p1, Lcom/nearme/game/sdk/common/model/biz/a;->a:Z

    if-eqz p1, :cond_6f

    sget-object p1, Lcom/nearme/game/sdk/d;->d:Ljava/util/List;

    iget p2, v0, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_6f

    :cond_59
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5355\u673a\u6e38\u620f\u8bf7\u52ff\u8c03\u7528\u767b\u5f55\u3001\u652f\u4ed8\u3001\u9000\u51fa\u5f15\u5bfc\u4e4b\u5916\u7684\u5176\u4ed6\u63a5\u53e3, requestCode = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v0, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    :goto_6f
    sget-object p1, Lcom/nearme/game/sdk/d;->a:Lcom/nearme/game/sdk/common/util/a;

    new-instance p2, Lcom/nearme/game/sdk/d$e;

    invoke-direct {p2, p0, v0, p3}, Lcom/nearme/game/sdk/d$e;-><init>(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/c/b/a;Lcom/nearme/game/sdk/b/a;)V

    invoke-virtual {p1, p2}, Lcom/nearme/game/sdk/common/util/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method z()V
    .registers 2

    const/16 v0, 0x1b69

    invoke-virtual {p0, v0}, Lcom/nearme/game/sdk/d;->u(I)V

    return-void
.end method

###### Class com.nearme.game.sdk.d.a (com.nearme.game.sdk.d$a)
.class final Lcom/nearme/game/sdk/d$a;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Lcom/nearme/game/sdk/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/d;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$a;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 4

    instance-of v0, p1, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/nearme/game/sdk/d$a;->a:Lcom/nearme/game/sdk/d;

    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/d;->A(Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResume::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCInternal"

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .registers 4

    instance-of v0, p1, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/nearme/game/sdk/d$a;->a:Lcom/nearme/game/sdk/d;

    invoke-virtual {v0}, Lcom/nearme/game/sdk/d;->z()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityPause::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCInternal"

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

###### Class com.nearme.game.sdk.d.b (com.nearme.game.sdk.d$b)
.class final Lcom/nearme/game/sdk/d$b;
.super Lcom/nearme/game/sdk/common/util/b;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/d;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$b;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2d

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2d

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/nearme/game/sdk/b/a;

    aget-object p1, p1, v1

    check-cast p1, Lcom/nearme/game/sdk/c/b/b;

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    const/16 v1, 0x3e9

    iget v2, p1, Lcom/nearme/game/sdk/c/b/b;->b:I

    if-eq v1, v2, :cond_28

    iget-object p1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Lcom/nearme/game/sdk/b/a;->a(Ljava/lang/String;I)V

    return-void

    :cond_28
    iget-object p1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/b/a;->onSuccess(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

###### Class com.nearme.game.sdk.d.c (com.nearme.game.sdk.d$c)
.class final Lcom/nearme/game/sdk/d$c;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "GCInternal"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected service = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->k(Lcom/nearme/game/sdk/d;Z)Z

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object p1

    monitor-enter p1

    :try_start_2a
    const-string v1, "GCInternal"

    const-string v2, "onServiceConnected release lock."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_5a

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->m(Lcom/nearme/game/sdk/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->n(Lcom/nearme/game/sdk/d;)V

    :try_start_4a
    new-instance p1, Lcom/nearme/game/sdk/d$i;

    iget-object v1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p1, v1}, Lcom/nearme/game/sdk/d$i;-><init>(Lcom/nearme/game/sdk/d;)V

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :catchall_5a
    move-exception p2

    :try_start_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "GCInternal"

    const-string v0, "onServiceDisconnected."

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method

###### Class com.nearme.game.sdk.d.C0441d (com.nearme.game.sdk.d$d)
.class final Lcom/nearme/game/sdk/d$d;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Lcom/nearme/game/sdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object p2, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p2}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object p2

    monitor-enter p2

    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2c

    iget-object p2, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    iget-object p2, p2, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/d;->k(Lcom/nearme/game/sdk/d;Z)Z

    iget-object v0, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_37

    const-string p1, "GCInternal"

    const-string v0, "init success."

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->p(Lcom/nearme/game/sdk/d;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq v0, p1, :cond_36

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->p(Lcom/nearme/game/sdk/d;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nearme/game/sdk/d;->u(I)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->q(Lcom/nearme/game/sdk/d;I)I

    :cond_36
    return-void

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

###### Class com.nearme.game.sdk.d.e (com.nearme.game.sdk.d$e)
.class final Lcom/nearme/game/sdk/d$e;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/c/b/a;

.field final synthetic b:Lcom/nearme/game/sdk/b/a;

.field final synthetic c:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/c/b/a;Lcom/nearme/game/sdk/b/a;)V
    .registers 4

    iput-object p1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    iput-object p2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iput-object p3, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "begin send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v2, v2, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_4d

    :try_start_1f
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_26} :catch_49

    :try_start_26
    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    iget-object v2, v1, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->g(Lcom/nearme/game/sdk/d;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_44
    monitor-exit v0

    goto :goto_4d

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3f2

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-static {}, Lcom/nearme/game/sdk/d;->r()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v3, v3, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    :try_start_72
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_79} :catch_9c

    :try_start_79
    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    iget-object v4, v3, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->s(Lcom/nearme/game/sdk/d;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    :cond_97
    monitor-exit v0

    goto :goto_a0

    :catchall_99
    move-exception v3

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_79 .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v3
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a0
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed send request "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v3, v3, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for init not accomplished."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_cf

    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const-string v3, "failed for init not accomplished."

    invoke-static {v1, v0, v3, v2}, Lcom/nearme/game/sdk/d;->c(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/b/a;Ljava/lang/String;I)V

    :cond_cf
    return-void

    :cond_d0
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/nearme/game/sdk/c/b/a;->c:J

    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget-wide v3, v3, Lcom/nearme/game/sdk/c/b/a;->c:J

    iget-object v5, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    invoke-virtual {v0, v3, v4, v5}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->j(JLjava/lang/Object;)V

    :cond_f1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "requst"

    iget-object v5, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->e(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_10b
    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_114} :catch_116

    const/4 v1, 0x1

    goto :goto_178

    :catch_116
    move-exception v0

    const-string v3, "GCInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send PRC request error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_144

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const-string v4, "failed for RemoteException."

    invoke-static {v3, v0, v4, v2}, Lcom/nearme/game/sdk/d;->c(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/b/a;Ljava/lang/String;I)V

    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget-wide v2, v2, Lcom/nearme/game/sdk/c/b/a;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->k(J)V

    :cond_144
    :try_start_144
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->h(Lcom/nearme/game/sdk/d;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_149} :catch_14a

    goto :goto_178

    :catch_14a
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    goto :goto_178

    :cond_151
    const-string v0, "GCInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed send request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v4, v4, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_178

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const-string v4, "failed for service is null."

    invoke-static {v3, v0, v4, v2}, Lcom/nearme/game/sdk/d;->c(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/b/a;Ljava/lang/String;I)V

    :cond_178
    :goto_178
    if-eqz v1, :cond_191

    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v2, v2, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_191
    return-void
.end method

###### Class com.nearme.game.sdk.d.f (com.nearme.game.sdk.d$f)
.class final Lcom/nearme/game/sdk/d$f;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->m(Lcom/nearme/game/sdk/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "GCInternal"

    const-string v2, "retry bind service."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    iget-object v2, v1, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/nearme/game/sdk/d;->a(Lcom/nearme/game/sdk/d;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    iget-object v1, v1, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    :cond_35
    const-string v1, "GCInternal"

    const-string v2, "waitService time out after retry release lock."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->m(Lcom/nearme/game/sdk/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v1
.end method

###### Class com.nearme.game.sdk.d.g (com.nearme.game.sdk.d$g)
.class final Lcom/nearme/game/sdk/d$g;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "GCInternal"

    const-string v2, "do init timeout release lock."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method

###### Class com.nearme.game.sdk.d.h (com.nearme.game.sdk.d$h)
.class final Lcom/nearme/game/sdk/d$h;
.super Lcom/nearme/game/sdk/common/util/b;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$h;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_60

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_60

    instance-of v0, p1, Lcom/nearme/game/sdk/c/b/b;

    if-eqz v0, :cond_60

    check-cast p1, Lcom/nearme/game/sdk/c/b/b;

    iget-object v0, p0, Lcom/nearme/game/sdk/d$h;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0, p1}, Lcom/nearme/game/sdk/d;->i(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/c/b/b;)V

    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_2f

    :cond_23
    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p1, Lcom/nearme/game/sdk/c/b/b;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->f(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nearme/game/sdk/b/a;

    :goto_2f
    if-eqz v0, :cond_4b

    const/16 v1, 0x3e9

    iget v2, p1, Lcom/nearme/game/sdk/c/b/b;->b:I

    if-ne v1, v2, :cond_3d

    iget-object v1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nearme/game/sdk/b/a;->onSuccess(Ljava/lang/String;)V

    goto :goto_42

    :cond_3d
    iget-object v1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nearme/game/sdk/b/a;->a(Ljava/lang/String;I)V

    :goto_42
    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p1, Lcom/nearme/game/sdk/c/b/b;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->k(J)V

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish handle request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/nearme/game/sdk/c/b/b;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCInternal"

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-void
.end method

###### Class com.nearme.game.sdk.d.i (com.nearme.game.sdk.d$i)
.class final Lcom/nearme/game/sdk/d$i;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$i;->b:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nearme/game/sdk/d$i;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    iput-wide v0, p0, Lcom/nearme/game/sdk/d$i;->a:J

    return-void

    :cond_11
    const-string v2, "GCInternal"

    const-string v3, "::ChildProcessStatusListener:binderDied"

    invoke-static {v2, v3}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$i;->b:Lcom/nearme/game/sdk/d;

    iget-object v3, v2, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/nearme/game/sdk/d;->a(Lcom/nearme/game/sdk/d;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$i;->b:Lcom/nearme/game/sdk/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    iput-wide v0, p0, Lcom/nearme/game/sdk/d$i;->a:J

    return-void
.end method
