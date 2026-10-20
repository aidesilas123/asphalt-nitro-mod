###### Class com.google.common.util.concurrent.f0.a (com.google.common.util.concurrent.f0$a)
.class final Lcom/google/common/util/concurrent/f0$a;
.super Lcom/google/common/util/concurrent/m$j;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/m$j<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final h:Lcom/google/common/util/concurrent/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/f0$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/common/util/concurrent/m;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    new-instance v0, Lcom/google/common/util/concurrent/f0$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f0$a;-><init>()V

    :goto_b
    sput-object v0, Lcom/google/common/util/concurrent/f0$a;->h:Lcom/google/common/util/concurrent/f0$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m$j;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/m$j;->cancel(Z)Z

    return-void
.end method
