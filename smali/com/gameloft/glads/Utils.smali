###### Class com.gameloft.glads.Utils (com.gameloft.glads.Utils)
.class public Lcom/gameloft/glads/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/glads/Utils$c;
    }
.end annotation


# static fields
.field static a:Landroid/app/Activity; = null

.field static b:Landroid/view/ViewGroup; = null

.field static c:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClassExists(Ljava/lang/String;)Z
    .registers 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method static GetActivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/glads/Utils;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static GetContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/gameloft/glads/Utils;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method static GetParentView()Landroid/view/ViewGroup;
    .registers 1

    sget-object v0, Lcom/gameloft/glads/Utils;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static GetTime()J
    .registers 2

    invoke-static {}, Lcom/gameloft/glads/Utils;->nativeGetTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static IsUnityMode()Z
    .registers 1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/glads/Utils;->nativeIsUnityMode()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_5

    :catch_5
    return v0
.end method

.method public static RestoreOrientation()V
    .registers 1

    invoke-static {}, Lcom/gameloft/glads/Utils;->IsUnityMode()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {}, Lcom/gameloft/glads/Utils;->nativeRestoreOrientation()V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    return-void

    :cond_a
    new-instance v0, Lcom/gameloft/glads/Utils$b;

    invoke-direct {v0}, Lcom/gameloft/glads/Utils$b;-><init>()V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static RunOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_26

    :cond_12
    new-instance v0, Lcom/gameloft/glads/Utils$c;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/Utils$c;-><init>(Ljava/lang/Runnable;)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/gameloft/glads/Utils$c;->a()V

    :goto_26
    return-void
.end method

.method public static RunOnMainThreadAsync(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_19

    :cond_12
    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void
.end method

.method public static SetActivity(Landroid/app/Activity;)V
    .registers 2

    sput-object p0, Lcom/gameloft/glads/Utils;->a:Landroid/app/Activity;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method public static SetOrientation(I)V
    .registers 2

    invoke-static {}, Lcom/gameloft/glads/Utils;->IsUnityMode()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {p0}, Lcom/gameloft/glads/Utils;->nativeSetOrientation(I)V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    return-void

    :cond_a
    new-instance v0, Lcom/gameloft/glads/Utils$a;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/Utils$a;-><init>(I)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static SetParentView(Landroid/view/ViewGroup;)V
    .registers 1

    sput-object p0, Lcom/gameloft/glads/Utils;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public static native nativeGetTime()J
.end method

.method public static native nativeIsUnityMode()Z
.end method

.method public static native nativeRestoreOrientation()V
.end method

.method public static native nativeSetOrientation(I)V
.end method

###### Class com.gameloft.glads.Utils.a (com.gameloft.glads.Utils$a)
.class Lcom/gameloft/glads/Utils$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/Utils;->SetOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/glads/Utils$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget v0, Lcom/gameloft/glads/Utils;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lcom/gameloft/glads/Utils;->c:I

    :cond_f
    iget v0, p0, Lcom/gameloft/glads/Utils$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_34

    :cond_1d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_34

    :cond_29
    if-nez v0, :cond_34

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_34
    :goto_34
    return-void
.end method

###### Class com.gameloft.glads.Utils.b (com.gameloft.glads.Utils$b)
.class Lcom/gameloft/glads/Utils$b;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/Utils;->RestoreOrientation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/gameloft/glads/Utils;->c:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

###### Class com.gameloft.glads.Utils.c (com.gameloft.glads.Utils$c)
.class Lcom/gameloft/glads/Utils$c;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/glads/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/glads/Utils$c;->a:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/glads/Utils$c;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :goto_0
    iget-boolean v0, p0, Lcom/gameloft/glads/Utils$c;->b:Z

    if-nez v0, :cond_c

    const-wide/16 v0, 0xa

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_0

    :catch_a
    nop

    goto :goto_0

    :cond_c
    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/Utils$c;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/glads/Utils$c;->b:Z

    return-void
.end method
