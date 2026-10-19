###### Class com.fyber.inneractive.sdk.config.j (com.fyber.inneractive.sdk.config.j)
.class public Lcom/fyber/inneractive/sdk/config/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/config/j$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/fyber/inneractive/sdk/config/i;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/config/j$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Lcom/fyber/inneractive/sdk/cache/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/config/i;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/config/i;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/j;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/config/j;->d:Z

    new-instance v0, Lcom/fyber/inneractive/sdk/cache/d;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/cache/d;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/j;->e:Lcom/fyber/inneractive/sdk/cache/d;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/fyber/inneractive/sdk/config/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    return-object v0
.end method

.method public b()V
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/network/g0;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/j$a;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/config/j$a;-><init>(Lcom/fyber/inneractive/sdk/config/j;)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/config/j;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/config/j;->e:Lcom/fyber/inneractive/sdk/cache/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/network/g0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;)V

    sget-object v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object v1, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/network/f0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.config.j.a (com.fyber.inneractive.sdk.config.j$a)
.class public Lcom/fyber/inneractive/sdk/config/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/config/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Lcom/fyber/inneractive/sdk/config/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/j;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/j;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/j$a;->a:Lcom/fyber/inneractive/sdk/config/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 5

    check-cast p1, Lcom/fyber/inneractive/sdk/config/i;

    if-eqz p1, :cond_2e

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/config/j$a;->a:Lcom/fyber/inneractive/sdk/config/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    invoke-virtual {p1, p3}, Lcom/fyber/inneractive/sdk/config/i;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2e

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/fyber/inneractive/sdk/config/j;->d:Z

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    iget-object p1, p2, Lcom/fyber/inneractive/sdk/config/j;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fyber/inneractive/sdk/config/j$b;

    iget-object v0, p2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    invoke-interface {p3, p2, v0}, Lcom/fyber/inneractive/sdk/config/j$b;->onGlobalConfigChanged(Lcom/fyber/inneractive/sdk/config/j;Lcom/fyber/inneractive/sdk/config/i;)V

    goto :goto_1c

    :cond_2e
    return-void
.end method

###### Class com.fyber.inneractive.sdk.config.j.b (com.fyber.inneractive.sdk.config.j$b)
.class public interface abstract Lcom/fyber/inneractive/sdk/config/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/config/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract onGlobalConfigChanged(Lcom/fyber/inneractive/sdk/config/j;Lcom/fyber/inneractive/sdk/config/i;)V
.end method
