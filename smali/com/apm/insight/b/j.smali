###### Class com.apm.insight.b.j (com.apm.insight.b.j)
.class public final Lcom/apm/insight/b/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/b/j$a;,
        Lcom/apm/insight/b/j$b;
    }
.end annotation


# static fields
.field private static a:I = 0x5

.field private static b:Lcom/apm/insight/b/j$b;

.field private static c:Lcom/apm/insight/b/j$a;

.field private static d:Z

.field private static e:Landroid/util/Printer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()V
    .registers 2

    sget-boolean v0, Lcom/apm/insight/b/j;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apm/insight/b/j;->d:Z

    new-instance v0, Lcom/apm/insight/b/j$b;

    invoke-direct {v0}, Lcom/apm/insight/b/j$b;-><init>()V

    sput-object v0, Lcom/apm/insight/b/j;->b:Lcom/apm/insight/b/j$b;

    invoke-static {}, Lcom/apm/insight/b/j;->d()Landroid/util/Printer;

    move-result-object v0

    sput-object v0, Lcom/apm/insight/b/j;->e:Landroid/util/Printer;

    if-eqz v0, :cond_1e

    sget-object v1, Lcom/apm/insight/b/j;->b:Lcom/apm/insight/b/j$b;

    iget-object v1, v1, Lcom/apm/insight/b/j$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-static {}, Lcom/apm/insight/i;->r()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/apm/insight/b/j;->b:Lcom/apm/insight/b/j$b;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    :cond_2d
    return-void
.end method

.method public static a(Landroid/util/Printer;)V
    .registers 2

    if-eqz p0, :cond_18

    sget-object v0, Lcom/apm/insight/b/j;->b:Lcom/apm/insight/b/j$b;

    iget-object v0, v0, Lcom/apm/insight/b/j$b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/apm/insight/b/j;->b:Lcom/apm/insight/b/j$b;

    iget-object v0, v0, Lcom/apm/insight/b/j$b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/apm/insight/b/j;->b:Lcom/apm/insight/b/j$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apm/insight/b/j$b;->e:Z

    :cond_18
    return-void
.end method

.method static synthetic b()Lcom/apm/insight/b/j$a;
    .registers 1

    sget-object v0, Lcom/apm/insight/b/j;->c:Lcom/apm/insight/b/j$a;

    return-object v0
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/apm/insight/b/j;->a:I

    return v0
.end method

.method private static d()Landroid/util/Printer;
    .registers 2

    :try_start_0
    const-string v0, "android.os.Looper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLogging"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.apm.insight.b.j.a (com.apm.insight.b.j$a)
.class public interface abstract Lcom/apm/insight/b/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(J)V
.end method

###### Class com.apm.insight.b.j.b (com.apm.insight.b.j$b)
.class Lcom/apm/insight/b/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/b/j$b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/b/j$b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/b/j$b;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/b/j$b;->d:Z

    iput-boolean v0, p0, Lcom/apm/insight/b/j$b;->e:Z

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/apm/insight/b/j;->b()Lcom/apm/insight/b/j$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_15

    :cond_14
    move-wide v3, v1

    :goto_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_49

    iget-boolean v5, p0, Lcom/apm/insight/b/j$b;->e:Z

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/apm/insight/b/j$b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Printer;

    iget-object v7, p0, Lcom/apm/insight/b/j$b;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    iget-object v7, p0, Lcom/apm/insight/b/j$b;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_42
    iget-object v5, p0, Lcom/apm/insight/b/j$b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/apm/insight/b/j$b;->e:Z

    :cond_49
    iget-object v5, p0, Lcom/apm/insight/b/j$b;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {}, Lcom/apm/insight/b/j;->c()I

    move-result v6

    if-le v5, v6, :cond_5c

    const-string v5, "LooperPrinterUtils"

    const-string v6, "wrapper contains too many printer,please check if the useless printer have been removed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    iget-object v5, p0, Lcom/apm/insight/b/j$b;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_62
    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Printer;

    if-eqz v6, :cond_62

    invoke-interface {v6, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_62

    :cond_74
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_a4

    iget-boolean p1, p0, Lcom/apm/insight/b/j$b;->d:Z

    if-eqz p1, :cond_a4

    iget-object p1, p0, Lcom/apm/insight/b/j$b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Printer;

    iget-object v6, p0, Lcom/apm/insight/b/j$b;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/apm/insight/b/j$b;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_9d
    iget-object p1, p0, Lcom/apm/insight/b/j$b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/apm/insight/b/j$b;->d:Z

    :cond_a4
    invoke-static {}, Lcom/apm/insight/b/j;->b()Lcom/apm/insight/b/j$a;

    move-result-object p1

    if-eqz p1, :cond_ba

    cmp-long p1, v3, v1

    if-lez p1, :cond_ba

    invoke-static {}, Lcom/apm/insight/b/j;->b()Lcom/apm/insight/b/j$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-interface {p1, v0, v1}, Lcom/apm/insight/b/j$a;->a(J)V

    :cond_ba
    return-void
.end method
