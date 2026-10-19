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
