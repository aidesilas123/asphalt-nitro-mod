###### Class com.google.common.util.concurrent.h (com.google.common.util.concurrent.h)
.class public final synthetic Lcom/google/common/util/concurrent/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/util/concurrent/h;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/google/common/util/concurrent/h;->a:I

    invoke-static {v0}, Lcom/google/common/util/concurrent/Striped;->e(I)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method
