###### Class com.fyber.inneractive.sdk.util.h (com.fyber.inneractive.sdk.util.h)
.class public Lcom/fyber/inneractive/sdk/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/fyber/inneractive/sdk/util/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/h;->a:Ljava/util/Queue;

    return-void
.end method
