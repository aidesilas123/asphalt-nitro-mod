###### Class com.mbridge.msdk.foundation.same.c.e (com.mbridge.msdk.foundation.same.c.e)
.class public final Lcom/mbridge/msdk/foundation/same/c/e;
.super Lcom/mbridge/msdk/foundation/same/e/a;
.source "CommonImageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/c/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/mbridge/msdk/foundation/same/c/e$a;

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/e/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->g:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->i:Z

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/c/h;)V
    .registers 5

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/e/a;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/mbridge/msdk/foundation/same/c/e;->g:Z

    iput-boolean p4, p0, Lcom/mbridge/msdk/foundation/same/c/e;->i:Z

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/c/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/c/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->h:Lcom/mbridge/msdk/foundation/same/c/e$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/foundation/same/c/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/same/c/e;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/foundation/same/c/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_19
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    new-instance v2, Lcom/mbridge/msdk/foundation/same/c/e$1;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/foundation/same/c/e$1;-><init>(Lcom/mbridge/msdk/foundation/same/c/e;)V

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/net/h/b;->downloadFile(Ljava/io/File;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_40

    :catch_24
    move-exception v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mbridge/msdk/foundation/same/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :catch_2f
    move-exception v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mbridge/msdk/foundation/same/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->g:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    const-string v1, "save path is null."

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/foundation/same/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/c/e;->c()V

    goto :goto_37

    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/c/e;->e()V

    goto :goto_37

    :cond_34
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/c/e;->e()V

    :goto_37
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/c/e$a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->h:Lcom/mbridge/msdk/foundation/same/c/e$a;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->g:Z

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method protected final c()V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/c/e;->h:Lcom/mbridge/msdk/foundation/same/c/e$a;

    if-eqz v2, :cond_36

    invoke-interface {v2, v0, v1}, Lcom/mbridge/msdk/foundation/same/c/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load image faild.because file["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/c/e;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/mbridge/msdk/foundation/same/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method

###### Class com.mbridge.msdk.foundation.same.c.e.AnonymousClass1 (com.mbridge.msdk.foundation.same.c.e$1)
.class final Lcom/mbridge/msdk/foundation/same/c/e$1;
.super Lcom/mbridge/msdk/foundation/same/net/f;
.source "CommonImageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/c/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mbridge/msdk/foundation/same/net/f<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/c/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/c/e$1;->a:Lcom/mbridge/msdk/foundation/same/c/e;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/mbridge/msdk/foundation/same/net/b/a;)V
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/foundation/same/c/e$1$2;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/foundation/same/c/e$1$2;-><init>(Lcom/mbridge/msdk/foundation/same/c/e$1;Lcom/mbridge/msdk/foundation/same/net/b/a;)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/c/e$1;->a:Lcom/mbridge/msdk/foundation/same/c/e;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/c/e;->b(Lcom/mbridge/msdk/foundation/same/c/e;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->f()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_18
    return-void
.end method

.method public final onFinish()V
    .registers 1

    return-void
.end method

.method public final onProgressChange(JJ)V
    .registers 5

    return-void
.end method

.method public final onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
    .registers 3

    new-instance p1, Lcom/mbridge/msdk/foundation/same/c/e$1$1;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/foundation/same/c/e$1$1;-><init>(Lcom/mbridge/msdk/foundation/same/c/e$1;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e$1;->a:Lcom/mbridge/msdk/foundation/same/c/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/c/e;->b(Lcom/mbridge/msdk/foundation/same/c/e;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->f()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_18
    return-void
.end method

###### Class com.mbridge.msdk.foundation.same.c.e.AnonymousClass1.RunnableC04031 (com.mbridge.msdk.foundation.same.c.e$1$1)
.class final Lcom/mbridge/msdk/foundation/same/c/e$1$1;
.super Ljava/lang/Object;
.source "CommonImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/c/e$1;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/c/e$1;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/c/e$1;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$1;->a:Lcom/mbridge/msdk/foundation/same/c/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$1;->a:Lcom/mbridge/msdk/foundation/same/c/e$1;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/c/e$1;->a:Lcom/mbridge/msdk/foundation/same/c/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/c/e;->a(Lcom/mbridge/msdk/foundation/same/c/e;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$1;->a:Lcom/mbridge/msdk/foundation/same/c/e$1;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/c/e$1;->a:Lcom/mbridge/msdk/foundation/same/c/e;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/c/e;->c()V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.same.c.e.AnonymousClass1.AnonymousClass2 (com.mbridge.msdk.foundation.same.c.e$1$2)
.class final Lcom/mbridge/msdk/foundation/same/c/e$1$2;
.super Ljava/lang/Object;
.source "CommonImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/c/e$1;->onError(Lcom/mbridge/msdk/foundation/same/net/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/net/b/a;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/c/e$1;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/c/e$1;Lcom/mbridge/msdk/foundation/same/net/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$2;->b:Lcom/mbridge/msdk/foundation/same/c/e$1;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$2;->a:Lcom/mbridge/msdk/foundation/same/net/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$2;->b:Lcom/mbridge/msdk/foundation/same/c/e$1;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/c/e$1;->a:Lcom/mbridge/msdk/foundation/same/c/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/c/e;->c(Lcom/mbridge/msdk/foundation/same/c/e;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image from http faild because http return code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$2;->a:Lcom/mbridge/msdk/foundation/same/net/b/a;

    iget v3, v3, Lcom/mbridge/msdk/foundation/same/net/b/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".image url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/c/e$1$2;->b:Lcom/mbridge/msdk/foundation/same/c/e$1;

    iget-object v3, v3, Lcom/mbridge/msdk/foundation/same/c/e$1;->a:Lcom/mbridge/msdk/foundation/same/c/e;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/c/e;->c(Lcom/mbridge/msdk/foundation/same/c/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/c/e;->a(Lcom/mbridge/msdk/foundation/same/c/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.same.c.e.a (com.mbridge.msdk.foundation.same.c.e$a)
.class public interface abstract Lcom/mbridge/msdk/foundation/same/c/e$a;
.super Ljava/lang/Object;
.source "CommonImageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method
