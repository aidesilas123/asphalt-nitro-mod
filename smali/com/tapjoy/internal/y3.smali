###### Class com.tapjoy.internal.y3 (com.tapjoy.internal.y3)
.class public final Lcom/tapjoy/internal/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJCacheListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/v0;


# direct methods
.method public constructor <init>(Lcom/tapjoy/v0;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/y3;->a:Lcom/tapjoy/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingComplete(I)V
    .registers 5

    sget-boolean p1, Lcom/tapjoy/internal/i8;->c:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/tapjoy/internal/y3;->a:Lcom/tapjoy/v0;

    iget-object p1, p1, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object p1, p1, Lcom/tapjoy/o;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->i()Lcom/tapjoy/internal/i8;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "load"

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/i8;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_14
    iget-object p1, p0, Lcom/tapjoy/internal/y3;->a:Lcom/tapjoy/v0;

    iget-object p1, p1, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    invoke-virtual {p1}, Lcom/tapjoy/o;->h()Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/y3;->a:Lcom/tapjoy/v0;

    iget-object v1, v1, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v2, v1, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    iget-object v1, v1, Lcom/tapjoy/o;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/TJAdUnit;->t(Lcom/tapjoy/w;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/tapjoy/o;->j:Z

    return-void
.end method
