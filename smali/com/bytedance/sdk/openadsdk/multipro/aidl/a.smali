###### Class com.bytedance.sdk.openadsdk.multipro.aidl.a (com.bytedance.sdk.openadsdk.multipro.aidl.a)
.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
.super Ljava/lang/Object;
.source "BinderPool.java"


# static fields
.field private static final b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

.field private c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;

.field private d:J

.field private final e:Landroid/content/ServiceConnection;

.field private final f:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->e:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:Landroid/os/IBinder$DeathRecipient;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p1
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:J

    return-wide v0
.end method

.method private d()V
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "TTAD.BinderPool"

    const-string v1, "BinderPool......connectBinderPoolService"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c()V

    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/os/IBinder;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v1

    if-nez v1, :cond_2f

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_25

    const/4 v1, 0x5

    if-eq p1, v1, :cond_20

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_16

    goto :goto_2e

    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    move-result-object v0

    goto :goto_2e

    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    move-result-object v0

    goto :goto_2e

    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->b()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    move-result-object v0

    goto :goto_2e

    :cond_25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    move-result-object v0

    goto :goto_2e

    :cond_2a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/g;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/g;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_48

    :goto_2e
    return-object v0

    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz v1, :cond_48

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/IBinderPool;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_39

    move-object v0, p1

    goto :goto_48

    :catch_39
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TTAD.BinderPool"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "queryBinder error"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->h(Ljava/lang/String;)V

    :catchall_48
    :cond_48
    :goto_48
    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz p1, :cond_11

    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;

    const-string v0, "onServiceConnected2"

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Lcom/bytedance/sdk/component/g/h;I)V

    :cond_11
    return-void
.end method

.method public b()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method public c()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:J
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_17

    :catchall_17
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.multipro.aidl.a.AnonymousClass1 (com.bytedance.sdk.openadsdk.multipro.aidl.a$1)
.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "BinderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;->onServiceConnected()V

    :cond_11
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.multipro.aidl.a.AnonymousClass2 (com.bytedance.sdk.openadsdk.multipro.aidl.a$2)
.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;
.super Ljava/lang/Object;
.source "BinderPool.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;

    const-string v0, "onServiceConnected"

    invoke-direct {p1, p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Lcom/bytedance/sdk/component/g/h;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "TTAD.BinderPool"

    const-string v0, "BinderPool......onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.multipro.aidl.a.AnonymousClass2.AnonymousClass1 (com.bytedance.sdk.openadsdk.multipro.aidl.a$2$1)
.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "BinderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->a:Landroid/os/IBinder;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "TTAD.BinderPool"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->a:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    :try_start_f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception v1

    const-string v2, "onServiceConnected throws :"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected - binderService consume time \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2$1;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;->onServiceConnected()V

    :cond_64
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.multipro.aidl.a.AnonymousClass3 (com.bytedance.sdk.openadsdk.multipro.aidl.a$3)
.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;
.super Ljava/lang/Object;
.source "BinderPool.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;

    const-string v1, "binderDied"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Lcom/bytedance/sdk/component/g/h;I)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.multipro.aidl.a.AnonymousClass3.AnonymousClass1 (com.bytedance.sdk.openadsdk.multipro.aidl.a$3$1)
.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "BinderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "TTAD.BinderPool"

    const-string v1, "binder died."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$3;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->e(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V

    return-void
.end method
