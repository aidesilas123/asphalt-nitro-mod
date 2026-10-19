###### Class com.google.common.util.concurrent.m.c (com.google.common.util.concurrent.m$c)
.class final Lcom/google/common/util/concurrent/m$c;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/m$c;

.field static final b:Lcom/google/common/util/concurrent/m$c;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-boolean v0, Lcom/google/common/util/concurrent/m;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sput-object v1, Lcom/google/common/util/concurrent/m$c;->b:Lcom/google/common/util/concurrent/m$c;

    sput-object v1, Lcom/google/common/util/concurrent/m$c;->a:Lcom/google/common/util/concurrent/m$c;

    goto :goto_1a

    :cond_a
    new-instance v0, Lcom/google/common/util/concurrent/m$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/m$c;->b:Lcom/google/common/util/concurrent/m$c;

    new-instance v0, Lcom/google/common/util/concurrent/m$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/m$c;->a:Lcom/google/common/util/concurrent/m$c;

    :goto_1a
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/m$c;->c:Z

    iput-object p2, p0, Lcom/google/common/util/concurrent/m$c;->d:Ljava/lang/Throwable;

    return-void
.end method
