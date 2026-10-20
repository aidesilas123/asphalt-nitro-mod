###### Class com.google.common.util.concurrent.m.e (com.google.common.util.concurrent.m$e)
.class final Lcom/google/common/util/concurrent/m$e;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/m$e;


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/concurrent/Executor;

.field d:Lcom/google/common/util/concurrent/m$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/m$e;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/m$e;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/m$e;->a:Lcom/google/common/util/concurrent/m$e;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/m$e;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/m$e;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/m$e;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/common/util/concurrent/m$e;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
