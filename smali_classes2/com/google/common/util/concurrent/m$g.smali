###### Class com.google.common.util.concurrent.m.g (com.google.common.util.concurrent.m$g)
.class final Lcom/google/common/util/concurrent/m$g;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/util/concurrent/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/h0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    iput-object p2, p0, Lcom/google/common/util/concurrent/m$g;->b:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    invoke-static {v0}, Lcom/google/common/util/concurrent/m;->c(Lcom/google/common/util/concurrent/m;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/m$g;->b:Lcom/google/common/util/concurrent/h0;

    invoke-static {v0}, Lcom/google/common/util/concurrent/m;->e(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/common/util/concurrent/m;->b()Lcom/google/common/util/concurrent/m$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    invoke-static {v0}, Lcom/google/common/util/concurrent/m;->f(Lcom/google/common/util/concurrent/m;)V

    :cond_20
    return-void
.end method
