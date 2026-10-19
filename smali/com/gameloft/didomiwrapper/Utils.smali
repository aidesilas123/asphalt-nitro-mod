###### Class com.gameloft.didomiwrapper.Utils (com.gameloft.didomiwrapper.Utils)
.class Lcom/gameloft/didomiwrapper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/didomiwrapper/Utils$a;
    }
.end annotation


# static fields
.field private static a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ClassExists(Ljava/lang/String;)Z
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

.method static GetActivity()Landroidx/appcompat/app/AppCompatActivity;
    .registers 1

    sget-object v0, Lcom/gameloft/didomiwrapper/Utils;->a:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
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
    new-instance v0, Lcom/gameloft/didomiwrapper/Utils$a;

    invoke-direct {v0, p0}, Lcom/gameloft/didomiwrapper/Utils$a;-><init>(Ljava/lang/Runnable;)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/gameloft/didomiwrapper/Utils$a;->a()V

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
    sget-object v0, Lcom/gameloft/didomiwrapper/Utils;->a:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method static SetActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .registers 1

    sput-object p0, Lcom/gameloft/didomiwrapper/Utils;->a:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

###### Class com.gameloft.didomiwrapper.Utils.a (com.gameloft.didomiwrapper.Utils$a)
.class Lcom/gameloft/didomiwrapper/Utils$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/didomiwrapper/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/didomiwrapper/Utils$a;->a:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/didomiwrapper/Utils$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :goto_0
    iget-boolean v0, p0, Lcom/gameloft/didomiwrapper/Utils$a;->b:Z

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

    iget-object v0, p0, Lcom/gameloft/didomiwrapper/Utils$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/didomiwrapper/Utils$a;->b:Z

    return-void
.end method
